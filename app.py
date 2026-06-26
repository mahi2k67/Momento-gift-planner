from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/login")
def login():
    return render_template("login.html")

@app.route("/register")
def register():
    return render_template("register.html")

@app.route("/planner")
def planner():
    return render_template("planner.html")

@app.route("/gifts")
def gifts():
    return render_template("gifts.html")

if __name__ == "__main__":
    app.run(debug=True)