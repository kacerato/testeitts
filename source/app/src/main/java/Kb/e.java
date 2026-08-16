package Kb;

import JAVARuntime.AButton;
import JAVARuntime.ACheckBox;
import JAVARuntime.AConstraintLayout;
import JAVARuntime.AEditText;
import JAVARuntime.AImageView;
import JAVARuntime.ALinearLayout;
import JAVARuntime.AProgressBar;
import JAVARuntime.ARadioButton;
import JAVARuntime.ASpinner;
import JAVARuntime.ASwitch;
import JAVARuntime.ATextView;
import JAVARuntime.AWebView;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.provider.MediaStore;
import android.text.InputFilter;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import d8.j;
import d8.r;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Stack;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import yd.C16181m;

public class e {
    public static void a(ConstraintLayout layout) {
        int identifier;
        int identifier2;
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(layout);
        for (int i10 = 0; i10 < layout.getChildCount(); i10++) {
            View childAt = layout.getChildAt(i10);
            Object tag = childAt.getTag();
            if (tag instanceof Map) {
                Map map = (Map) tag;
                String str = (String) map.get("id");
                if (str != null && str.startsWith("@+id/")) {
                    int identifier3 = layout.getContext().getResources().getIdentifier(str.substring(5), "id", layout.getContext().getPackageName());
                    if (identifier3 == 0) {
                        identifier3 = View.generateViewId();
                    }
                    childAt.setId(identifier3);
                }
                String str2 = (String) map.get("layout_constraintTop_toTopOf");
                if (str2 != null && str2.startsWith("@+id/") && (identifier2 = layout.getResources().getIdentifier(str2.substring(5), "id", layout.getContext().getPackageName())) != 0) {
                    constraintSet.connect(childAt.getId(), 3, identifier2, 3);
                }
                String str3 = (String) map.get("layout_constraintStart_toStartOf");
                if (str3 != null && str3.startsWith("@+id/") && (identifier = layout.getResources().getIdentifier(str3.substring(5), "id", layout.getContext().getPackageName())) != 0) {
                    constraintSet.connect(childAt.getId(), 6, identifier, 6);
                }
            }
        }
        constraintSet.applyTo(layout);
    }

    public static void b(Context context, View view, XmlPullParser parser) {
        String e10 = e(parser, "padding");
        int i10 = e10 != null ? i(context, e10) : 0;
        int i11 = i10;
        int i12 = i11;
        int i13 = i12;
        String e11 = e(parser, "paddingTop");
        if (e11 != null) {
            i11 = i(context, e11);
        }
        String e12 = e(parser, "paddingBottom");
        if (e12 != null) {
            i13 = i(context, e12);
        }
        String e13 = e(parser, "paddingLeft");
        if (e13 != null) {
            i10 = i(context, e13);
        }
        String e14 = e(parser, "paddingRight");
        if (e14 != null) {
            i12 = i(context, e14);
        }
        String e15 = e(parser, "paddingStart");
        if (e15 != null) {
            i10 = i(context, e15);
        }
        String e16 = e(parser, "paddingEnd");
        if (e16 != null) {
            i12 = i(context, e16);
        }
        view.setPadding(i10, i11, i12, i13);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static View c(Context context, String tag, View view) {
        View view2;
        View view3;
        boolean z10 = false;
        for (int i10 = 0; i10 < j.K0(); i10++) {
            r J02 = j.J0(i10);
            if (J02.d().equals(tag) || J02.b().equals(tag)) {
                if (!View.class.isAssignableFrom(J02.f84454c)) {
                    throw new IllegalArgumentException("Class is not a View: " + tag);
                }
                Class cls = J02.f84454c;
                try {
                    try {
                        try {
                            try {
                                view3 = (View) cls.getConstructor(Context.class).newInstance(context);
                            } catch (NoSuchMethodException unused) {
                                view = (View) cls.newInstance();
                            }
                        } catch (NoSuchMethodException unused2) {
                            view3 = (View) cls.getConstructor(null).newInstance(null);
                        }
                        view = view3;
                        if (view == null) {
                            throw new IllegalArgumentException("Failed to instantiate widget: " + tag);
                        }
                        z10 = true;
                        if (!z10) {
                            try {
                                Class<?> cls2 = Class.forName(tag);
                                if (!View.class.isAssignableFrom(cls2)) {
                                    throw new IllegalArgumentException("Class is not a View: " + tag);
                                }
                                try {
                                    try {
                                        try {
                                            view2 = (View) cls2.getConstructor(Context.class).newInstance(context);
                                        } catch (NoSuchMethodException unused3) {
                                            view2 = (View) cls2.newInstance();
                                        }
                                    } catch (NoSuchMethodException unused4) {
                                        view2 = (View) cls2.getConstructor(null).newInstance(null);
                                    }
                                    view = view2;
                                    if (view == null) {
                                        throw new IllegalArgumentException("Failed to instantiate widget: " + tag);
                                    }
                                } catch (IllegalAccessException e10) {
                                    e = e10;
                                    throw new IllegalArgumentException("Failed to instantiate widget: " + tag, e);
                                } catch (InstantiationException e11) {
                                    e = e11;
                                    throw new IllegalArgumentException("Failed to instantiate widget: " + tag, e);
                                }
                            } catch (ClassNotFoundException e12) {
                                throw new IllegalArgumentException("Unknown widget: " + tag, e12);
                            } catch (Exception e13) {
                                throw new IllegalArgumentException("Failed to instantiate widget: " + tag, e13);
                            }
                        }
                        return view;
                    } catch (IllegalAccessException e14) {
                        e = e14;
                        throw new IllegalArgumentException("Failed to instantiate widget: " + tag, e);
                    } catch (InstantiationException e15) {
                        e = e15;
                        throw new IllegalArgumentException("Failed to instantiate widget: " + tag, e);
                    }
                } catch (Exception e16) {
                    throw new IllegalArgumentException("Failed to instantiate widget: " + tag, e16);
                }
            }
        }
        if (!z10) {
        }
        return view;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x019a. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x04e8  */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v20, types: [android.webkit.WebView, JAVARuntime.AWebView] */
    /* JADX WARN: Type inference failed for: r1v21, types: [android.widget.HorizontalScrollView] */
    /* JADX WARN: Type inference failed for: r1v22, types: [JAVARuntime.AConstraintLayout] */
    /* JADX WARN: Type inference failed for: r1v23, types: [android.widget.TextView, JAVARuntime.ATextView] */
    /* JADX WARN: Type inference failed for: r1v24, types: [android.widget.SeekBar, android.widget.ProgressBar, android.widget.AbsSeekBar] */
    /* JADX WARN: Type inference failed for: r1v29, types: [android.widget.Space] */
    /* JADX WARN: Type inference failed for: r1v30, types: [android.widget.Space] */
    /* JADX WARN: Type inference failed for: r1v31, types: [JAVARuntime.ASpinner] */
    /* JADX WARN: Type inference failed for: r1v32, types: [android.widget.Space] */
    /* JADX WARN: Type inference failed for: r1v33, types: [android.widget.TextView, android.widget.CompoundButton, JAVARuntime.ARadioButton] */
    /* JADX WARN: Type inference failed for: r1v34, types: [JAVARuntime.AImageView, android.widget.ImageView] */
    /* JADX WARN: Type inference failed for: r1v39, types: [android.widget.LinearLayout, JAVARuntime.ALinearLayout] */
    /* JADX WARN: Type inference failed for: r1v40, types: [android.widget.FrameLayout, android.view.View] */
    /* JADX WARN: Type inference failed for: r1v41, types: [android.widget.TextView, JAVARuntime.ACheckBox] */
    /* JADX WARN: Type inference failed for: r1v42, types: [android.widget.TextView, JAVARuntime.AEditText] */
    /* JADX WARN: Type inference failed for: r1v47, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r1v48 */
    /* JADX WARN: Type inference failed for: r1v5, types: [android.widget.Switch, android.widget.TextView, JAVARuntime.ASwitch] */
    /* JADX WARN: Type inference failed for: r1v50 */
    /* JADX WARN: Type inference failed for: r1v51 */
    /* JADX WARN: Type inference failed for: r1v52 */
    /* JADX WARN: Type inference failed for: r1v53 */
    /* JADX WARN: Type inference failed for: r1v54 */
    /* JADX WARN: Type inference failed for: r1v55 */
    /* JADX WARN: Type inference failed for: r1v56 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static View d(Context context, String str, XmlPullParser xmlPullParser, View view) {
        String str2;
        char c10;
        int i10;
        ?? aSwitch;
        Drawable createFromPath;
        Drawable createFromPath2;
        Locale locale = Locale.ROOT;
        if (str.toLowerCase(locale).startsWith("com.itsmagic")) {
            throw new IllegalArgumentException("Cannot inflate views from com.itsmagic");
        }
        if (str.toLowerCase(locale).startsWith("com.google.android.gms")) {
            throw new IllegalArgumentException("Cannot inflate views from com.google.android.gms");
        }
        if (str.toLowerCase(locale).startsWith("com.google.android.ump")) {
            throw new IllegalArgumentException("Cannot inflate views from com.google.android.ump");
        }
        if (str.toLowerCase(locale).startsWith(K2.b.f10711b)) {
            throw new IllegalArgumentException("Cannot inflate views from com.google.firebase");
        }
        char c11 = '\uffff';
        switch (str.hashCode()) {
            case -1805606060:
                str2 = "progress";
                if (str.equals("Switch")) {
                    c11 = 0;
                    break;
                }
                break;
            case -1495589242:
                str2 = "progress";
                if (str.equals("ProgressBar")) {
                    c11 = 1;
                    break;
                }
                break;
            case -1406842887:
                str2 = "progress";
                if (str.equals("WebView")) {
                    c10 = 2;
                    c11 = c10;
                    break;
                }
                break;
            case -1125439882:
                str2 = "progress";
                if (str.equals("HorizontalScrollView")) {
                    c10 = 3;
                    c11 = c10;
                    break;
                }
                break;
            case -979739473:
                str2 = "progress";
                if (str.equals("androidx.constraintlayout.widget.ConstraintLayout")) {
                    c10 = 4;
                    c11 = c10;
                    break;
                }
                break;
            case -938935918:
                str2 = "progress";
                if (str.equals("TextView")) {
                    c10 = 5;
                    c11 = c10;
                    break;
                }
                break;
            case -658531749:
                str2 = "progress";
                if (str.equals("SeekBar")) {
                    c10 = 6;
                    c11 = c10;
                    break;
                }
                break;
            case -657983172:
                str2 = "progress";
                if (str.equals("androidx.legacy.widget.Space")) {
                    c10 = 7;
                    c11 = c10;
                    break;
                }
                break;
            case -519918947:
                str2 = "progress";
                if (str.equals("LegacySpace")) {
                    c10 = '\b';
                    c11 = c10;
                    break;
                }
                break;
            case -339785223:
                str2 = "progress";
                if (str.equals("Spinner")) {
                    c10 = '\t';
                    c11 = c10;
                    break;
                }
                break;
            case 80085222:
                str2 = "progress";
                if (str.equals("Space")) {
                    c10 = '\n';
                    c11 = c10;
                    break;
                }
                break;
            case 776382189:
                str2 = "progress";
                if (str.equals("RadioButton")) {
                    c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                    c11 = c10;
                    break;
                }
                break;
            case 1125864064:
                str2 = "progress";
                if (str.equals("ImageView")) {
                    c10 = '\f';
                    c11 = c10;
                    break;
                }
                break;
            case 1127291599:
                str2 = "progress";
                if (str.equals("LinearLayout")) {
                    c10 = CharUtils.CR;
                    c11 = c10;
                    break;
                }
                break;
            case 1310765783:
                str2 = "progress";
                if (str.equals("FrameLayout")) {
                    c11 = 14;
                    break;
                }
                break;
            case 1601505219:
                str2 = "progress";
                if (str.equals("CheckBox")) {
                    c10 = 15;
                    c11 = c10;
                    break;
                }
                break;
            case 1666676343:
                str2 = "progress";
                if (str.equals(M4.a.f14522b0)) {
                    c10 = 16;
                    c11 = c10;
                    break;
                }
                break;
            case 1969230692:
                str2 = "progress";
                if (str.equals("RadioGroup")) {
                    c10 = 17;
                    c11 = c10;
                    break;
                }
                break;
            case 2001146706:
                str2 = "progress";
                if (str.equals("Button")) {
                    c10 = 18;
                    c11 = c10;
                    break;
                }
                break;
            case 2059813682:
                str2 = "progress";
                if (str.equals("ScrollView")) {
                    c10 = 19;
                    c11 = c10;
                    break;
                }
                break;
            case 2114496391:
                str2 = "progress";
                if (str.equals("ConstraintLayout")) {
                    c10 = 20;
                    c11 = c10;
                    break;
                }
                break;
            default:
                str2 = "progress";
                break;
        }
        switch (c11) {
            case 0:
                i10 = 0;
                aSwitch = new ASwitch();
                String e10 = e(xmlPullParser, "text");
                if (e10 != null) {
                    aSwitch.setText(e10);
                }
                String e11 = e(xmlPullParser, "checked");
                if (e11 != null) {
                    aSwitch.setChecked(Boolean.parseBoolean(e11));
                }
                String e12 = e(xmlPullParser, "textOn");
                if (e12 != null) {
                    aSwitch.setTextOn(e12);
                }
                String e13 = e(xmlPullParser, "textOff");
                if (e13 != null) {
                    aSwitch.setTextOff(e13);
                }
                if (aSwitch != 0) {
                    u(context, aSwitch, xmlPullParser);
                    aSwitch.setLayoutParams(m(context, xmlPullParser, view));
                    v(aSwitch, e(xmlPullParser, "visibility"));
                    n(context, aSwitch, e(xmlPullParser, "background"));
                    o(aSwitch, e(xmlPullParser, "backgroundTint"));
                    q(aSwitch, e(xmlPullParser, "layout_gravity"));
                    p(aSwitch, e(xmlPullParser, "gravity"));
                    HashMap hashMap = new HashMap();
                    String e14 = e(xmlPullParser, "id");
                    if (e14 != null && e14.startsWith("@+id/")) {
                        hashMap.put("id", e14);
                    }
                    for (int i11 = i10; i11 < xmlPullParser.getAttributeCount(); i11++) {
                        hashMap.put(xmlPullParser.getAttributeName(i11), xmlPullParser.getAttributeValue(i11));
                    }
                    aSwitch.setTag(hashMap);
                    b(context, aSwitch, xmlPullParser);
                }
                return aSwitch;
            case 1:
                String str3 = str2;
                i10 = 0;
                String e15 = e(xmlPullParser, "style");
                if (e15 == null) {
                    e15 = "progressBarStyleHorizontal";
                } else if (e15.startsWith("?android:attr/")) {
                    e15 = e15.substring(14);
                }
                AProgressBar aProgressBar = new AProgressBar(e15);
                if ("true".equalsIgnoreCase(e(xmlPullParser, "indeterminate"))) {
                    aProgressBar.setIndeterminate(true);
                } else {
                    String e16 = e(xmlPullParser, str3);
                    if (e16 != null) {
                        try {
                            aProgressBar.setProgress(Integer.parseInt(e16));
                        } catch (NumberFormatException unused) {
                            throw new IllegalArgumentException("Invalid progress value: " + e16);
                        }
                    }
                    String e17 = e(xmlPullParser, "max");
                    if (e17 != null) {
                        try {
                            aProgressBar.setMax(Integer.parseInt(e17));
                        } catch (NumberFormatException unused2) {
                            throw new IllegalArgumentException("Invalid max value: " + e17);
                        }
                    }
                }
                aSwitch = aProgressBar;
                if (aSwitch != 0) {
                }
                return aSwitch;
            case 2:
                i10 = 0;
                aSwitch = new AWebView();
                String e18 = e(xmlPullParser, "url");
                if (e18 != null) {
                    aSwitch.loadUrl(e18);
                }
                if (aSwitch != 0) {
                }
                return aSwitch;
            case 3:
                i10 = 0;
                aSwitch = new HorizontalScrollView(context);
                if (aSwitch != 0) {
                }
                return aSwitch;
            case 4:
                i10 = 0;
                aSwitch = new AConstraintLayout();
                if (aSwitch != 0) {
                }
                return aSwitch;
            case 5:
                i10 = 0;
                aSwitch = new ATextView();
                aSwitch.setText(e(xmlPullParser, "text"));
                String e19 = e(xmlPullParser, "textAllCaps");
                if (e19 != null) {
                    s(aSwitch, Boolean.parseBoolean(e19));
                }
                t(aSwitch, e(xmlPullParser, "textColor"));
                if (aSwitch != 0) {
                }
                return aSwitch;
            case 6:
                i10 = 0;
                aSwitch = new SeekBar(context);
                String e20 = e(xmlPullParser, "max");
                if (e20 != null) {
                    try {
                        aSwitch.setMax(Integer.parseInt(e20));
                    } catch (NumberFormatException unused3) {
                        throw new IllegalArgumentException("Invalid max value for SeekBar: " + e20);
                    }
                }
                String e21 = e(xmlPullParser, str2);
                if (e21 != null) {
                    try {
                        aSwitch.setProgress(Integer.parseInt(e21));
                    } catch (NumberFormatException unused4) {
                        throw new IllegalArgumentException("Invalid progress value for SeekBar: " + e21);
                    }
                }
                String e22 = e(xmlPullParser, "thumb");
                if (e22 != null && !e22.startsWith(C16181m.f130230g)) {
                    File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + e22));
                    if (file.exists() && (createFromPath2 = Drawable.createFromPath(file.getAbsolutePath())) != null) {
                        aSwitch.setThumb(createFromPath2);
                    }
                }
                String e23 = e(xmlPullParser, "progressDrawable");
                if (e23 != null && !e23.startsWith(C16181m.f130230g)) {
                    File file2 = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + e23));
                    if (file2.exists() && (createFromPath = Drawable.createFromPath(file2.getAbsolutePath())) != null) {
                        aSwitch.setProgressDrawable(createFromPath);
                    }
                }
                if (aSwitch != 0) {
                }
                return aSwitch;
            case 7:
                i10 = 0;
                aSwitch = new Space(context);
                if (aSwitch != 0) {
                }
                return aSwitch;
            case '\b':
                i10 = 0;
                aSwitch = new Space(context);
                if (aSwitch != 0) {
                }
                return aSwitch;
            case '\t':
                i10 = 0;
                aSwitch = new ASpinner();
                if (aSwitch != 0) {
                }
                return aSwitch;
            case '\n':
                i10 = 0;
                aSwitch = new Space(context);
                if (aSwitch != 0) {
                }
                return aSwitch;
            case 11:
                i10 = 0;
                aSwitch = new ARadioButton();
                String e24 = e(xmlPullParser, "text");
                String e25 = e(xmlPullParser, "checked");
                if (e24 != null) {
                    aSwitch.setText(e24);
                }
                if (e25 != null && e25.equals("true")) {
                    aSwitch.setChecked(true);
                }
                if (aSwitch != 0) {
                }
                return aSwitch;
            case '\f':
                i10 = 0;
                aSwitch = new AImageView();
                String e26 = e(xmlPullParser, "src");
                if (e26 != null && !e26.isEmpty()) {
                    try {
                        File file3 = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + e26));
                        if (!file3.exists()) {
                            throw new IllegalArgumentException("Failed to load image: " + e26);
                        }
                        Vc.e.F(aSwitch, file3);
                    } catch (Exception unused5) {
                        throw new IllegalArgumentException("Failed to load image: " + e26);
                    }
                }
                if (aSwitch != 0) {
                }
                return aSwitch;
            case '\r':
                i10 = 0;
                aSwitch = new ALinearLayout();
                aSwitch.setOrientation(g(xmlPullParser));
                if (aSwitch != 0) {
                }
                return aSwitch;
            case 14:
                i10 = 0;
                aSwitch = new FrameLayout(context);
                u(context, aSwitch, xmlPullParser);
                v(aSwitch, e(xmlPullParser, "visibility"));
                n(context, aSwitch, e(xmlPullParser, "background"));
                String e27 = e(xmlPullParser, "layout_gravity");
                if (e27 != null) {
                    int f10 = f(e27);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = f10;
                    aSwitch.setLayoutParams(layoutParams);
                }
                if (aSwitch != 0) {
                }
                return aSwitch;
            case 15:
                i10 = 0;
                aSwitch = new ACheckBox();
                aSwitch.setText(e(xmlPullParser, "text"));
                if (aSwitch != 0) {
                }
                return aSwitch;
            case 16:
                aSwitch = new AEditText();
                String e28 = e(xmlPullParser, "text");
                if (e28 != null) {
                    aSwitch.setText(e28);
                }
                String e29 = e(xmlPullParser, "textColor");
                if (e29 != null && e29.startsWith(C16181m.f130230g)) {
                    aSwitch.setTextColor(Color.parseColor(e29));
                }
                if ("true".equalsIgnoreCase(e(xmlPullParser, "textAllCaps"))) {
                    i10 = 0;
                    aSwitch.setFilters(new InputFilter[]{new InputFilter.AllCaps()});
                } else {
                    i10 = 0;
                }
                aSwitch.setInputType(c.a(e(xmlPullParser, "inputType")));
                if (aSwitch != 0) {
                }
                return aSwitch;
            case 17:
                RadioGroup radioGroup = new RadioGroup(context);
                String e30 = e(xmlPullParser, MediaStore.Images.ImageColumns.ORIENTATION);
                aSwitch = radioGroup;
                if (e30 != null) {
                    if (e30.equals("horizontal")) {
                        radioGroup.setOrientation(0);
                        aSwitch = radioGroup;
                    } else {
                        radioGroup.setOrientation(1);
                        aSwitch = radioGroup;
                    }
                }
                i10 = 0;
                if (aSwitch != 0) {
                }
                return aSwitch;
            case 18:
                AButton aButton = new AButton();
                aButton.setText(e(xmlPullParser, "text"));
                aSwitch = aButton;
                i10 = 0;
                if (aSwitch != 0) {
                }
                return aSwitch;
            case 19:
                aSwitch = new ScrollView(context);
                i10 = 0;
                if (aSwitch != 0) {
                }
                return aSwitch;
            case 20:
                aSwitch = new AConstraintLayout();
                i10 = 0;
                if (aSwitch != 0) {
                }
                return aSwitch;
            default:
                aSwitch = c(context, str, null);
                i10 = 0;
                if (aSwitch != 0) {
                }
                return aSwitch;
        }
    }

    public static String e(XmlPullParser parser, String name) {
        return parser.getAttributeValue("http://schemas.android.com/apk/res/android", name);
    }

    public static int f(String gravityString) {
        return b.a(gravityString);
    }

    public static int g(XmlPullParser parser) {
        return d.a(parser.getAttributeValue("http://schemas.android.com/apk/res/android", MediaStore.Images.ImageColumns.ORIENTATION));
    }

    public static View h(String xml) {
        try {
            Context t10 = N7.c.t();
            XmlPullParser newPullParser = Xml.newPullParser();
            newPullParser.setInput(new StringReader(xml));
            Stack stack = new Stack();
            View view = null;
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
                if (eventType == 2) {
                    View d10 = d(t10, newPullParser.getName(), newPullParser, (View) stack.peek());
                    if (d10 == null) {
                        continue;
                    } else {
                        if (stack.isEmpty()) {
                            view = d10;
                        } else {
                            ViewGroup viewGroup = (ViewGroup) stack.peek();
                            if (!(viewGroup instanceof ScrollView) && !(viewGroup instanceof HorizontalScrollView)) {
                                if (viewGroup != null) {
                                    viewGroup.addView(d10);
                                }
                            }
                            if (viewGroup.getChildCount() > 0) {
                                throw new IllegalStateException("ScrollView/HorizontalScrollView can have only one child");
                            }
                            viewGroup.addView(d10);
                        }
                        if (d10 instanceof ViewGroup) {
                            stack.push((ViewGroup) d10);
                        }
                    }
                } else if (eventType == 3 && !stack.isEmpty() && ((ViewGroup) stack.peek()).getClass().getSimpleName().equals(newPullParser.getName())) {
                    stack.pop();
                }
            }
            if (view instanceof ConstraintLayout) {
                a((ConstraintLayout) view);
            }
            return view;
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        } catch (XmlPullParserException e11) {
            throw new RuntimeException(e11);
        }
    }

    public static int i(Context context, String value) {
        return a.a(value, context.getResources());
    }

    public static int j(XmlPullParser parser, Resources r10, String attrName) {
        String attributeValue = parser.getAttributeValue("http://schemas.android.com/apk/res/android", attrName);
        if (attributeValue == null) {
            return 0;
        }
        return a.a(attributeValue, r10);
    }

    public static float k(XmlPullParser parser, String attrName) {
        String attributeValue = parser.getAttributeValue("http://schemas.android.com/apk/res/android", attrName);
        if (attributeValue == null) {
            return 0.0f;
        }
        try {
            return Float.parseFloat(attributeValue);
        } catch (Exception unused) {
            return 0.0f;
        }
    }

    public static int l(String value, Context context) {
        if (value == null) {
            return -2;
        }
        return a.a(value, context.getResources());
    }

    public static ViewGroup.LayoutParams m(Context context, XmlPullParser parser, View parent) {
        String attributeValue = parser.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_width");
        String attributeValue2 = parser.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_height");
        int l10 = l(attributeValue, context);
        int l11 = l(attributeValue2, context);
        Resources resources = context.getResources();
        if (!(parent instanceof LinearLayout)) {
            return new ViewGroup.LayoutParams(l10, l11);
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(l10, l11, k(parser, "layout_weight"));
        layoutParams.topMargin = j(parser, resources, "layout_marginTop");
        layoutParams.bottomMargin = j(parser, resources, "layout_marginBottom");
        layoutParams.setMarginStart(j(parser, resources, "layout_marginStart"));
        layoutParams.setMarginEnd(j(parser, resources, "layout_marginEnd"));
        return layoutParams;
    }

    public static void n(Context context, View view, String background) {
        if (background != null) {
            if (background.startsWith(C16181m.f130230g)) {
                try {
                    view.setBackgroundColor(Color.parseColor(background));
                    return;
                } catch (IllegalArgumentException unused) {
                    throw new RuntimeException("Invalid color:" + background);
                }
            }
            File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + background));
            if (file.exists()) {
                view.setBackground(Drawable.createFromPath(file.getAbsolutePath()));
                return;
            }
            throw new IllegalArgumentException("Failed to load image: " + background);
        }
    }

    public static void o(View view, String backgroundTint) {
        if (backgroundTint == null || !backgroundTint.startsWith(C16181m.f130230g)) {
            return;
        }
        try {
            view.setBackgroundTintList(ColorStateList.valueOf(Color.parseColor(backgroundTint)));
        } catch (IllegalArgumentException unused) {
            throw new IllegalArgumentException("Invalid color on backgroundTint: " + backgroundTint);
        }
    }

    public static void p(View view, String value) {
        if (value != null) {
            int a10 = b.a(value);
            if (view instanceof TextView) {
                ((TextView) view).setGravity(a10);
                return;
            }
            if (view instanceof LinearLayout) {
                ((LinearLayout) view).setGravity(a10);
            } else {
                if (view instanceof EditText) {
                    ((EditText) view).setGravity(a10);
                    return;
                }
                throw new IllegalArgumentException("Unknown widget: " + view.getClass().getName());
            }
        }
    }

    public static void q(View view, String layoutGravity) {
        if (layoutGravity != null) {
            int a10 = b.a(layoutGravity);
            if (view.getLayoutParams() instanceof LinearLayout.LayoutParams) {
                ((LinearLayout.LayoutParams) view.getLayoutParams()).gravity = a10;
            } else if (view.getLayoutParams() instanceof RelativeLayout.LayoutParams) {
                ((RelativeLayout.LayoutParams) view.getLayoutParams()).addRule(a10);
            } else if (view.getLayoutParams() instanceof FrameLayout.LayoutParams) {
                ((FrameLayout.LayoutParams) view.getLayoutParams()).gravity = a10;
            }
        }
    }

    public static void r(TextView textView, String text) {
        if (text != null) {
            textView.setText(text);
        }
    }

    public static void s(TextView textView, boolean textAllCaps) {
        textView.setAllCaps(textAllCaps);
    }

    public static void t(TextView textView, String textColor) {
        if (textColor != null) {
            if (textColor.startsWith(C16181m.f130230g)) {
                textView.setTextColor(Color.parseColor(textColor));
                return;
            }
            throw new IllegalArgumentException("Invalid textColor format: " + textColor);
        }
    }

    public static void u(Context context, View view, XmlPullParser parser) {
        String e10 = e(parser, "id");
        if (e10 == null || !e10.startsWith("@+id/")) {
            return;
        }
        int identifier = context.getResources().getIdentifier(e10.substring(5), "id", context.getPackageName());
        if (identifier == 0) {
            identifier = View.generateViewId();
        }
        view.setId(identifier);
    }

    public static void v(View view, String visibility) {
        view.setVisibility(f.a(visibility));
    }
}
