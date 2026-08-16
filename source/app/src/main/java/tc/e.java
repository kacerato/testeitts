package tc;

import Ic.C2634m;
import JAVARuntime.KeyboardButton;

public class e extends C2634m {

    public String f117287b;

    public String f117288c;

    public boolean f117294k;

    public int f117298o;

    public float f117299p;

    public int f117300q;

    public KeyboardButton f117301r;

    public boolean f117289d = false;

    public boolean f117290e = false;

    public boolean f117291g = false;

    public boolean f117292i = false;

    public boolean f117293j = false;

    public boolean f117295l = false;

    public boolean f117296m = false;

    public boolean f117297n = false;

    public int e() {
        return this.f117300q;
    }

    public KeyboardButton f() {
        KeyboardButton keyboardButton = this.f117301r;
        if (keyboardButton != null) {
            return keyboardButton;
        }
        KeyboardButton keyboardButton2 = new KeyboardButton(this);
        this.f117301r = keyboardButton2;
        return keyboardButton2;
    }
}
