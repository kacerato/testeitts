package y4;

import com.itsmagic.engine.Activities.Editor.Utils.Editor;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;

public class C16145c {

    public String f129995a;

    public String f129996b;

    public String f129997c;

    public String f129998d;

    public int f129999e;

    public ColorINT f130000f;

    public Editor f130001g;

    public C16145c() {
        this.f129999e = 1;
        this.f129995a = "";
    }

    public Editor a() {
        if (this.f130001g == null) {
            this.f130001g = new Editor(false);
        }
        return this.f130001g;
    }

    public C16145c(String tag, String message) {
        this.f129999e = 1;
        this.f129995a = tag;
        if (tag == null) {
            this.f129995a = "";
        }
        this.f129996b = null;
        if (message != null) {
            if (message.length() >= 500) {
                this.f129997c = message.substring(0, 500);
            } else {
                this.f129997c = message;
            }
        }
    }

    public C16145c(String tag, String message, String link) {
        this.f129999e = 1;
        this.f129995a = tag;
        if (tag == null) {
            this.f129995a = "";
        }
        this.f129996b = null;
        if (message != null) {
            if (message.length() >= 500) {
                this.f129997c = message.substring(0, 500);
            } else {
                this.f129997c = message;
            }
        }
        this.f129998d = link;
    }

    public C16145c(String tag, String tittle, String message, String link) {
        this.f129999e = 1;
        this.f129995a = tag;
        if (tag == null) {
            this.f129995a = "";
        }
        if (tittle != null) {
            if (tittle.length() >= 500) {
                this.f129996b = tittle.substring(0, 500);
            } else {
                this.f129996b = tittle;
            }
        }
        if (message != null) {
            if (message.length() >= 500) {
                this.f129997c = message.substring(0, 500);
            } else {
                this.f129997c = message;
            }
        }
        this.f129998d = link;
    }

    public C16145c(String tag, String tittle, String message, String link, ColorINT color) {
        this.f129999e = 1;
        this.f129995a = tag;
        if (tag == null) {
            this.f129995a = "";
        }
        this.f129996b = tittle;
        this.f129997c = message;
        this.f129998d = link;
        this.f130000f = color;
    }
}
