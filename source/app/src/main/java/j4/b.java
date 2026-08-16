package J4;

import JAVARuntime.Log;
import com.itsmagic.engine.Activities.Editor.Utils.Editor;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;

public class b {

    public String f10203a;

    public String f10204b;

    public String f10205c;

    public String f10206d;

    public int f10207e;

    public ColorINT f10208f;

    public Editor f10209g;

    public Log f10210h;

    public b() {
        this.f10207e = 1;
        this.f10203a = "";
    }

    public Editor a() {
        if (this.f10209g == null) {
            this.f10209g = new Editor(false);
        }
        return this.f10209g;
    }

    public Log b() {
        Log log = this.f10210h;
        if (log != null) {
            return log;
        }
        Log log2 = new Log(this);
        this.f10210h = log2;
        return log2;
    }

    public b(String tag, String message) {
        this.f10207e = 1;
        this.f10203a = tag;
        if (tag == null) {
            this.f10203a = "";
        }
        this.f10204b = null;
        if (message != null) {
            if (message.length() >= 500) {
                this.f10205c = message.substring(0, 500);
            } else {
                this.f10205c = message;
            }
        }
    }

    public b(String tag, String message, String link) {
        this.f10207e = 1;
        this.f10203a = tag;
        if (tag == null) {
            this.f10203a = "";
        }
        this.f10204b = null;
        if (message != null) {
            if (message.length() >= 500) {
                this.f10205c = message.substring(0, 500);
            } else {
                this.f10205c = message;
            }
        }
        this.f10206d = link;
    }

    public b(String tag, String title, String message, String link) {
        this.f10207e = 1;
        this.f10203a = tag;
        if (tag == null) {
            this.f10203a = "";
        }
        if (title != null) {
            if (title.length() >= 500) {
                this.f10204b = title.substring(0, 500);
            } else {
                this.f10204b = title;
            }
        }
        if (message != null) {
            if (message.length() >= 500) {
                this.f10205c = message.substring(0, 500);
            } else {
                this.f10205c = message;
            }
        }
        this.f10206d = link;
    }

    public b(String tag, String title, String message, String link, ColorINT color) {
        this.f10207e = 1;
        this.f10203a = tag;
        if (tag == null) {
            this.f10203a = "";
        }
        this.f10204b = title;
        this.f10205c = message;
        this.f10206d = link;
        this.f10208f = color;
    }
}
