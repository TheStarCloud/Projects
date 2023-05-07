from flask import Flask, request
app = Flask(__name__)

@app.route('/')
def home():
    return '''
        <form method="POST" action="/calculate">
            <label>Impressions:</label>
            <input type="text" name="impressions"><br>
            <label>Media Cost:</label>
            <input type="text" name="media_cost"><br>
            <input type="submit" value="Calculate">
        </form>
    '''

@app.route('/calculate', methods=['POST'])
def calculate():
    impressions = int(request.form['impressions'])
    media_cost = float(request.form['media_cost'])
    cpm = (media_cost / impressions) * 1000
    return f"The CPM is {cpm:.2f}"

if __name__ == '__main__':
    app.run()
