package C5;

import android.content.Context;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Arrays;
import java.util.List;

public class b {

    public D5.m f2048A;

    public SteppedArrayList<String> f2049B;

    public int f2050C;

    public D5.b f2051D;

    public int f2052E;

    public D5.l f2053F;

    public D5.j f2054G;

    public boolean f2055H;

    public D5.n f2056I;

    public boolean f2057J;

    public String f2058K;

    public String f2059L;

    public String f2060M;

    public com.itsmagic.engine.Engines.Engine.Animation.c f2061N;

    public Component f2062O;

    public Transform f2063P;

    public C5.a f2064Q;

    public boolean f2065R;

    public boolean f2066a;

    public D5.h f2067b;

    public D5.k f2068c;

    public D5.d f2069d;

    public D5.a f2070e;

    public D5.i f2071f;

    public D5.e f2072g;

    public Object f2073h;

    public int f2074i;

    public Object f2075j;

    public D5.f f2076k;

    public String f2077l;

    public String f2078m;

    public a f2079n;

    public String f2080o;

    public b[] f2081p;

    public String[] f2082q;

    public int f2083r;

    public int f2084s;

    public boolean f2085t;

    public float f2086u;

    public float f2087v;

    public float f2088w;

    public float f2089x;

    public boolean f2090y;

    public List<String> f2091z;

    public enum a {
        Float,
        SLFloat,
        SLFloatWrap,
        SLFloatSlider,
        SLFloatSliderFPanel,
        SLFloat01,
        Int,
        SLInt,
        SLIntWrap,
        SLIntSlider,
        Long,
        SLLong,
        SLLongWrap,
        Double,
        SLDouble,
        SLDoubleWrap,
        Short,
        SLShort,
        SLShortWrap,
        Char,
        SLChar,
        SLCharWrap,
        String,
        SLString,
        SLPassword,
        MLString,
        SLStringWrap,
        StringList,
        InputFile,
        OutputFile,
        NoteText,
        Vector,
        Header,
        Boolean,
        SLBoolean,
        SLBooleanWrap,
        CompostBoolean,
        Component,
        ComponentList,
        Button,
        ButtonMatchParent,
        Color,
        Dropdown,
        SLDropdown,
        SLDropdownWrap,
        Texture,
        UITexture,
        UIStyle,
        Matcap,
        CubemapOrGallery,
        Anchor,
        TextAlignment,
        FileListItem,
        CustomView,
        Tab,
        GameObject,
        ComponentEntry
    }

    public b(String title, a type) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2067b = null;
        this.f2077l = title;
        this.f2079n = type;
    }

    public void b() {
        D5.e eVar = this.f2072g;
        if (eVar != null) {
            eVar.b();
        }
    }

    public void c() {
        this.f2065R = true;
        this.f2067b = null;
        this.f2070e = null;
        this.f2071f = null;
        this.f2072g = null;
        this.f2073h = null;
        this.f2074i = 0;
        this.f2075j = null;
        this.f2076k = null;
        this.f2077l = null;
        this.f2079n = null;
        this.f2080o = null;
        this.f2081p = null;
        this.f2082q = null;
        C5.a aVar = this.f2064Q;
        if (aVar != null) {
            aVar.a();
        }
        this.f2064Q = null;
        this.f2062O = null;
        this.f2063P = null;
    }

    public b d(GameObject gameObject, Component component, String animationEntryName, com.itsmagic.engine.Engines.Engine.Animation.c animationEntryType) {
        this.f2062O = component;
        this.f2063P = null;
        return g(gameObject != null ? gameObject.getGuid().j() : null, component != null ? component.getGuid().j() : null, animationEntryName, animationEntryType);
    }

    public b e(GameObject gameObject, Transform component, String animationEntryName, com.itsmagic.engine.Engines.Engine.Animation.c animationEntryType) {
        this.f2062O = null;
        this.f2063P = component;
        return g(gameObject != null ? gameObject.getGuid().j() : null, component != null ? com.itsmagic.engine.Engines.Engine.Animation.a.f72593a.toString() : null, animationEntryName, animationEntryType);
    }

    public b f(String animationObjectUID, Component component, String animationEntryName, com.itsmagic.engine.Engines.Engine.Animation.c animationEntryType) {
        this.f2062O = component;
        this.f2063P = null;
        return g(animationObjectUID, component != null ? component.getGuid().j() : null, animationEntryName, animationEntryType);
    }

    public final b g(String animationObjectUID, String animationComponentUID, String animationEntryName, com.itsmagic.engine.Engines.Engine.Animation.c animationEntryType) {
        this.f2058K = animationObjectUID;
        this.f2059L = animationComponentUID;
        this.f2060M = animationEntryName;
        this.f2061N = animationEntryType;
        return this;
    }

    public boolean h() {
        return false;
    }

    public boolean i() {
        return this.f2065R;
    }

    public void j(boolean autoSetValue) {
        this.f2066a = autoSetValue;
    }

    public b k(int backgroundColor) {
        this.f2052E = backgroundColor;
        return this;
    }

    public b l(boolean enableExtractUi) {
        this.f2057J = enableExtractUi;
        return this;
    }

    public b m(D5.j longClickListener) {
        this.f2054G = longClickListener;
        return this;
    }

    public b n(boolean vectorEntryWrapContent) {
        this.f2055H = vectorEntryWrapContent;
        return this;
    }

    public b(String title, int fontSize) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2067b = null;
        this.f2077l = title;
        this.f2079n = a.NoteText;
        this.f2083r = fontSize;
        this.f2085t = true;
    }

    public b(String title, int fontSize, D5.n updatableNoteText) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2067b = null;
        this.f2077l = title;
        this.f2079n = a.NoteText;
        this.f2083r = fontSize;
        this.f2085t = true;
        this.f2056I = updatableNoteText;
    }

    public b(String title, int fontSize, int color) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2067b = null;
        this.f2077l = title;
        this.f2079n = a.NoteText;
        this.f2083r = fontSize;
        this.f2084s = color;
        this.f2085t = true;
    }

    public b(D5.h insEntryCallBack, String title, a type) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2067b = insEntryCallBack;
        this.f2077l = title;
        this.f2079n = type;
    }

    public b(D5.h insEntryCallBack, String title, a type, boolean autoSetValue) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2067b = insEntryCallBack;
        this.f2077l = title;
        this.f2079n = type;
        j(autoSetValue);
    }

    public b(D5.k objectEntryCallback, String title) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2068c = objectEntryCallback;
        this.f2077l = title;
        this.f2079n = a.GameObject;
    }

    public b(D5.d componentEntryCallback, String title) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2069d = componentEntryCallback;
        this.f2077l = title;
        this.f2079n = a.ComponentEntry;
    }

    public b(D5.h insEntryCallBack, String title, a type, D5.l refreshBackgroundListener) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2057J = true;
        this.f2065R = false;
        this.f2067b = insEntryCallBack;
        this.f2077l = title;
        this.f2079n = type;
        this.f2053F = refreshBackgroundListener;
    }

    public b(D5.b buttonViewCallBack, String title, a type) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2051D = buttonViewCallBack;
        this.f2077l = title;
        this.f2079n = type;
    }

    public b(D5.b buttonViewCallBack, String title, a type, D5.l refreshBackgroundListener) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2057J = true;
        this.f2065R = false;
        this.f2051D = buttonViewCallBack;
        this.f2077l = title;
        this.f2079n = type;
        this.f2053F = refreshBackgroundListener;
    }

    public b(D5.h insEntryCallBack, String title, a type, float slideMultiplier) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2067b = insEntryCallBack;
        this.f2077l = title;
        this.f2079n = type;
        this.f2086u = slideMultiplier;
    }

    public b(D5.h insEntryCallBack, String title, a type, float slideMultiplier, int backgroundColor) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2067b = insEntryCallBack;
        this.f2077l = title;
        this.f2079n = type;
        this.f2086u = slideMultiplier;
        this.f2052E = backgroundColor;
    }

    public b(D5.h insEntryCallBack, String title, a type, float slideMultiplier, D5.l refreshBackgroundListener) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2057J = true;
        this.f2065R = false;
        this.f2067b = insEntryCallBack;
        this.f2077l = title;
        this.f2079n = type;
        this.f2086u = slideMultiplier;
        this.f2053F = refreshBackgroundListener;
    }

    public b(D5.h insEntryCallBack, String title, a type, float minValue, float maxValue, float SliderStep) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2067b = insEntryCallBack;
        this.f2077l = title;
        this.f2079n = type;
        this.f2087v = minValue;
        this.f2088w = maxValue;
        this.f2089x = SliderStep;
    }

    public b(D5.h insEntryCallBack, String title, a type, float minValue, float maxValue, float SliderStep, boolean clampToBounds) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2067b = insEntryCallBack;
        this.f2077l = title;
        this.f2079n = type;
        this.f2087v = minValue;
        this.f2088w = maxValue;
        this.f2089x = SliderStep;
        this.f2090y = clampToBounds;
    }

    public b(D5.a buttonEntryCallback, String title) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2070e = buttonEntryCallback;
        this.f2079n = a.Button;
        this.f2077l = title;
    }

    public b(D5.h insEntryCallBack, String title, a type, Context context) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2067b = insEntryCallBack;
        this.f2077l = title;
        this.f2079n = type;
    }

    public b(D5.h insEntryCallBack, String title, a type, String inputFileFormats) {
        this.f2066a = true;
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2067b = insEntryCallBack;
        this.f2077l = title;
        this.f2079n = type;
        this.f2080o = inputFileFormats;
    }

    public b(D5.h insEntryCallBack, String inputFileFormats, D5.i insEntryListCallback, Object listItem) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2067b = insEntryCallBack;
        this.f2077l = null;
        this.f2079n = a.FileListItem;
        this.f2080o = inputFileFormats;
        this.f2071f = insEntryListCallback;
        this.f2075j = listItem;
    }

    public b(D5.h insEntryCallBack, D5.i insEntryListCallback, Object listItem, a type) {
        this.f2066a = true;
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2067b = insEntryCallBack;
        this.f2077l = null;
        this.f2079n = type;
        this.f2080o = "";
        this.f2071f = insEntryListCallback;
        this.f2075j = listItem;
    }

    public b(D5.h insEntryCallBack, String title, a type, String[] extra) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2067b = insEntryCallBack;
        this.f2077l = title;
        this.f2079n = type;
        this.f2082q = extra;
    }

    public b(D5.e customViewCallbacks, int customView, Object object) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2072g = customViewCallbacks;
        this.f2079n = a.CustomView;
        this.f2074i = customView;
        this.f2073h = object;
    }

    public b(D5.e customViewCallbacks, Object object) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2072g = customViewCallbacks;
        this.f2079n = a.CustomView;
        this.f2073h = object;
    }

    public b(String[] tabs, int selectedTab, D5.m tabCallbacks) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        SteppedArrayList<String> steppedArrayList = new SteppedArrayList<>();
        this.f2049B = steppedArrayList;
        steppedArrayList.addAll(Arrays.asList(tabs));
        this.f2048A = tabCallbacks;
        this.f2079n = a.Tab;
        this.f2050C = selectedTab;
    }

    public b(SteppedArrayList<String> tabs, int selectedTab, D5.m tabCallbacks) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2049B = tabs;
        this.f2048A = tabCallbacks;
        this.f2079n = a.Tab;
        this.f2050C = selectedTab;
    }

    public b(D5.h insEntryCallBack, String title, List<String> itens) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2067b = insEntryCallBack;
        this.f2077l = title;
        this.f2079n = a.Dropdown;
        this.f2091z = itens;
    }

    public b(D5.h insEntryCallBack, String title, List<String> itens, a type, String dropDownName) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2067b = insEntryCallBack;
        this.f2077l = title;
        this.f2079n = type;
        this.f2091z = itens;
        this.f2078m = dropDownName;
    }

    public b(C5.a insComponent) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2064Q = insComponent;
        this.f2079n = a.Component;
    }

    public b(C5.a insComponent, Object listItem, D5.i insEntryListCallback) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2064Q = insComponent;
        this.f2079n = a.ComponentList;
        this.f2075j = listItem;
        this.f2071f = insEntryListCallback;
    }

    public b(String title, a type, b[] vectorEntries) {
        this.f2066a = true;
        this.f2080o = "";
        this.f2084s = -1;
        this.f2086u = 1.0f;
        this.f2087v = 0.0f;
        this.f2088w = 100.0f;
        this.f2089x = 0.0f;
        this.f2090y = true;
        this.f2050C = 0;
        this.f2052E = -1;
        this.f2053F = null;
        this.f2057J = true;
        this.f2065R = false;
        this.f2077l = title;
        this.f2079n = type;
        this.f2081p = vectorEntries;
    }
}
