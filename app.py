from flask import Flask, render_template

app = Flask(__name__)

# Sample tasks for the to-do list
tasks = [
    {'id': 1, 'task': 'Learn Flask framework'},
    {'id': 2, 'task': 'Build to-do application'},
    {'id': 3, 'task': 'Deploy to cloud  '}
]

@app.route('/')
def index():
    return render_template('index.html', tasks=tasks)

if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0", port="5000")
