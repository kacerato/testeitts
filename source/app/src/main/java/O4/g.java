package o4;

import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;

public class g extends EditorPanel {

    public static final String f98488Z = "SimpleTittlePanel";

    public String f98489X;

    public String f98490Y;

    public g(String icon, String tittle) {
        this.f98489X = icon;
        this.f98490Y = tittle;
    }

    @Override
    public String S() {
        return this.f98489X;
    }

    @Override
    public String X() {
        return this.f98490Y;
    }
}
