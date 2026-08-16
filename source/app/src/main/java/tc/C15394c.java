package tc;

import JAVARuntime.GamePadButton;

public class C15394c {

    public String f117274a;

    public boolean f117275b = false;

    public boolean f117276c = false;

    public boolean f117277d = false;

    public boolean f117278e = false;

    public boolean f117279f = false;

    public boolean f117280g = false;

    public boolean f117281h = false;

    public boolean f117282i = false;

    public float f117283j;

    public GamePadButton f117284k;

    public boolean a() {
        return this.f117275b;
    }

    public boolean b() {
        return this.f117277d;
    }

    public boolean c() {
        return this.f117278e;
    }

    public boolean d() {
        return this.f117276c;
    }

    public boolean e() {
        return this.f117279f;
    }

    public void f(boolean down) {
        this.f117275b = down;
    }

    public void g(boolean longDown) {
        this.f117277d = longDown;
    }

    public void h(boolean longPressed) {
        this.f117278e = longPressed;
    }

    public void i(boolean pressed) {
        this.f117276c = pressed;
    }

    public void j(boolean up) {
        this.f117279f = up;
    }

    public GamePadButton k() {
        GamePadButton gamePadButton = this.f117284k;
        if (gamePadButton != null) {
            return gamePadButton;
        }
        GamePadButton gamePadButton2 = new GamePadButton(this);
        this.f117284k = gamePadButton2;
        return gamePadButton2;
    }
}
