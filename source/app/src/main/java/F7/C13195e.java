package f7;

@Deprecated
public class C13195e {

    public String f86143a;

    public String f86144b;

    public int f86145c;

    public int f86146d;

    public a f86147e;

    public InterfaceC13193c f86148f;

    public boolean f86149g;

    public enum a {
        SHORT,
        MEDIUM,
        LONG,
        BIGLONG,
        NO_AUTO_CANCEL
    }

    public C13195e(String tittle, String message, int icon, int color, a time) {
        this.f86143a = tittle;
        this.f86144b = message;
        this.f86145c = icon;
        this.f86146d = color;
        this.f86147e = time;
    }

    public C13195e(String tittle, String message, int icon, int color, a time, InterfaceC13193c messageCallbacks) {
        this.f86143a = tittle;
        this.f86144b = message;
        this.f86145c = icon;
        this.f86146d = color;
        this.f86147e = time;
        this.f86148f = messageCallbacks;
    }
}
