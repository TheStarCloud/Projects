from flask import Flask, render_template, request, session

app = Flask(__name__)
app.secret_key = 'your_secret_key_here'

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/calculate', methods=['POST'])
def calculate():
    impressions = int(request.form['impressions'])
    media_cost = float(request.form['media_cost'])
    cpm = (media_cost / impressions) * 1000
    session['cpm'] = cpm
    return render_template('index.html')

@app.before_request
def before_request():
    session.permanent = True
    app.permanent_session_lifetime = timedelta(minutes=5)

@app.after_request
def after_request(response):
    response.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
    response.headers["Expires"] = 0
    response.headers["Pragma"] = "no-cache"
    return response

if __name__ == '__main__':
    app.run()
