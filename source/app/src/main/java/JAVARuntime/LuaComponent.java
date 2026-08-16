package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:LuaComponent.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:LuaComponent.class
  classes.dex
 */
@ClassCategory(cat = {"Lua", "Components"})
public final class LuaComponent extends Component {
    public float getFloat(String str) {
        ValueObject var = getVar(str);
        if (var != null) {
            return var.toFloat();
        }
        return 0.0f;
    }

    public double getDouble(String str) {
        ValueObject var = getVar(str);
        if (var != null) {
            return var.toDouble();
        }
        return 0.0d;
    }

    public float getInt(String str) {
        if (getVar(str) != null) {
            return r0.toInt();
        }
        return 0.0f;
    }

    public long getLong(String str) {
        ValueObject var = getVar(str);
        if (var != null) {
            return var.toLong();
        }
        return 0L;
    }

    public String getString(String str) {
        ValueObject var = getVar(str);
        if (var != null) {
            return var.toString();
        }
        return null;
    }

    public boolean getBoolean(String str) {
        ValueObject var = getVar(str);
        if (var != null) {
            return var.toBoolean();
        }
        return false;
    }

    public ValueObject getVar(String str) {
        return null;
    }

    public void setVar(String str, ValueObject valueObject) {
    }

    public void setFloat(String str, float f10) {
    }

    public void setDouble(String str, double d10) {
    }

    public void setInt(String str, int i10) {
    }

    public void setLong(String str, long j10) {
    }

    public void setString(String str, String str2) {
    }

    public void setBoolean(String str, boolean z10) {
    }

    public void call(String str) {
        super.callFunction(str);
    }

    public void call(String str, int i10) {
        super.callFunction(str, i10);
    }

    public void call(String str, float f10) {
        super.callFunction(str, f10);
    }

    public void call(String str, String str2) {
        super.callFunction(str, str2);
    }

    public void call(String str, boolean z10) {
        super.callFunction(str, z10);
    }

    public void call(String str, Object... objArr) {
        super.callFunction(str, objArr);
    }
}
