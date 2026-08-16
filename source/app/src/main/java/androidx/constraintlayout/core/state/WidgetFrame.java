package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.motion.CustomAttribute;
import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.parser.CLElement;
import androidx.constraintlayout.core.parser.CLKey;
import androidx.constraintlayout.core.parser.CLNumber;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLParsingException;
import androidx.constraintlayout.core.state.Transition;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import b3.s;
import ga.m;
import java.util.HashMap;
import java.util.Set;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class WidgetFrame {
    private static final boolean OLD_SYSTEM = true;
    public static float phone_orientation = Float.NaN;
    public float alpha;
    public int bottom;
    public float interpolatedPos;
    public int left;
    public final HashMap<String, CustomVariable> mCustom;
    public String name;
    public float pivotX;
    public float pivotY;
    public int right;
    public float rotationX;
    public float rotationY;
    public float rotationZ;
    public float scaleX;
    public float scaleY;
    public int top;
    public float translationX;
    public float translationY;
    public float translationZ;
    public int visibility;
    public ConstraintWidget widget;

    public WidgetFrame() {
        this.widget = null;
        this.left = 0;
        this.top = 0;
        this.right = 0;
        this.bottom = 0;
        this.pivotX = Float.NaN;
        this.pivotY = Float.NaN;
        this.rotationX = Float.NaN;
        this.rotationY = Float.NaN;
        this.rotationZ = Float.NaN;
        this.translationX = Float.NaN;
        this.translationY = Float.NaN;
        this.translationZ = Float.NaN;
        this.scaleX = Float.NaN;
        this.scaleY = Float.NaN;
        this.alpha = Float.NaN;
        this.interpolatedPos = Float.NaN;
        this.visibility = 0;
        this.mCustom = new HashMap<>();
        this.name = null;
    }

    private static void add(StringBuilder sb2, String str, int i10) {
        sb2.append(str);
        sb2.append(": ");
        sb2.append(i10);
        sb2.append(",\n");
    }

    public static void interpolate(int i10, int i11, WidgetFrame widgetFrame, WidgetFrame widgetFrame2, WidgetFrame widgetFrame3, Transition transition, float f10) {
        int i12;
        float f11;
        int i13;
        int i14;
        float f12;
        float f13;
        int i15;
        float f14;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        float f15 = 100.0f * f10;
        int i22 = (int) f15;
        int i23 = widgetFrame2.left;
        int i24 = widgetFrame2.top;
        int i25 = widgetFrame3.left;
        int i26 = widgetFrame3.top;
        int i27 = widgetFrame2.right - i23;
        int i28 = widgetFrame2.bottom - i24;
        int i29 = widgetFrame3.right - i25;
        int i30 = widgetFrame3.bottom - i26;
        float f16 = widgetFrame2.alpha;
        float f17 = widgetFrame3.alpha;
        if (widgetFrame2.visibility == 8) {
            i24 = (int) (i24 - (i30 / 2.0f));
            i14 = (int) (i23 - (i29 / 2.0f));
            if (Float.isNaN(f16)) {
                i13 = i30;
                i12 = i29;
                f11 = 0.0f;
            } else {
                f11 = f16;
                i12 = i29;
                i13 = i30;
            }
        } else {
            i12 = i27;
            f11 = f16;
            i13 = i28;
            i14 = i23;
        }
        if (widgetFrame3.visibility == 8) {
            i25 = (int) (i25 - (i12 / 2.0f));
            i26 = (int) (i26 - (i13 / 2.0f));
            i29 = i12;
            i30 = i13;
            if (Float.isNaN(f17)) {
                f17 = 0.0f;
            }
        }
        if (Float.isNaN(f11) && !Float.isNaN(f17)) {
            f11 = 1.0f;
        }
        if (!Float.isNaN(f11) && Float.isNaN(f17)) {
            f17 = 1.0f;
        }
        if (widgetFrame2.visibility == 4) {
            f13 = f17;
            f12 = 0.0f;
        } else {
            f12 = f11;
            f13 = f17;
        }
        float f18 = widgetFrame3.visibility == 4 ? 0.0f : f13;
        if (widgetFrame.widget == null || !transition.hasPositionKeyframes()) {
            i15 = i24;
            f14 = f10;
            i16 = i14;
            i17 = i25;
        } else {
            Transition.KeyPosition findPreviousPosition = transition.findPreviousPosition(widgetFrame.widget.stringId, i22);
            i15 = i24;
            Transition.KeyPosition findNextPosition = transition.findNextPosition(widgetFrame.widget.stringId, i22);
            if (findPreviousPosition == findNextPosition) {
                findNextPosition = null;
            }
            if (findPreviousPosition != null) {
                i14 = (int) (findPreviousPosition.f32550x * i10);
                i19 = i25;
                i18 = i11;
                i15 = (int) (findPreviousPosition.f32551y * i18);
                i20 = findPreviousPosition.frame;
            } else {
                i18 = i11;
                i19 = i25;
                i20 = 0;
            }
            i16 = i14;
            if (findNextPosition != null) {
                i17 = (int) (findNextPosition.f32550x * i10);
                i26 = (int) (findNextPosition.f32551y * i18);
                i21 = findNextPosition.frame;
            } else {
                i21 = 100;
                i17 = i19;
            }
            f14 = (f15 - i20) / (i21 - i20);
        }
        int i31 = i15;
        widgetFrame.widget = widgetFrame2.widget;
        int i32 = (int) (i16 + ((i17 - i16) * f14));
        widgetFrame.left = i32;
        int i33 = (int) (i31 + (f14 * (i26 - i31)));
        widgetFrame.top = i33;
        float f19 = 1.0f - f10;
        widgetFrame.right = i32 + ((int) ((i12 * f19) + (i29 * f10)));
        widgetFrame.bottom = i33 + ((int) ((f19 * i13) + (i30 * f10)));
        widgetFrame.pivotX = interpolate(widgetFrame2.pivotX, widgetFrame3.pivotX, 0.5f, f10);
        widgetFrame.pivotY = interpolate(widgetFrame2.pivotY, widgetFrame3.pivotY, 0.5f, f10);
        widgetFrame.rotationX = interpolate(widgetFrame2.rotationX, widgetFrame3.rotationX, 0.0f, f10);
        widgetFrame.rotationY = interpolate(widgetFrame2.rotationY, widgetFrame3.rotationY, 0.0f, f10);
        widgetFrame.rotationZ = interpolate(widgetFrame2.rotationZ, widgetFrame3.rotationZ, 0.0f, f10);
        widgetFrame.scaleX = interpolate(widgetFrame2.scaleX, widgetFrame3.scaleX, 1.0f, f10);
        widgetFrame.scaleY = interpolate(widgetFrame2.scaleY, widgetFrame3.scaleY, 1.0f, f10);
        widgetFrame.translationX = interpolate(widgetFrame2.translationX, widgetFrame3.translationX, 0.0f, f10);
        widgetFrame.translationY = interpolate(widgetFrame2.translationY, widgetFrame3.translationY, 0.0f, f10);
        widgetFrame.translationZ = interpolate(widgetFrame2.translationZ, widgetFrame3.translationZ, 0.0f, f10);
        widgetFrame.alpha = interpolate(f12, f18, 1.0f, f10);
        Set<String> o10 = widgetFrame3.mCustom.o();
        widgetFrame.mCustom.clear();
        for (String str : o10) {
            if (widgetFrame2.mCustom.containsKey(str)) {
                CustomVariable customVariable = widgetFrame2.mCustom.get(str);
                CustomVariable customVariable2 = widgetFrame3.mCustom.get(str);
                CustomVariable customVariable3 = new CustomVariable(customVariable);
                widgetFrame.mCustom.put(str, customVariable3);
                if (customVariable.numberOfInterpolatedValues() == 1) {
                    customVariable3.setValue(Float.valueOf(interpolate(customVariable.getValueToInterpolate(), customVariable2.getValueToInterpolate(), 0.0f, f10)));
                } else {
                    int numberOfInterpolatedValues = customVariable.numberOfInterpolatedValues();
                    float[] fArr = new float[numberOfInterpolatedValues];
                    float[] fArr2 = new float[numberOfInterpolatedValues];
                    customVariable.getValuesToInterpolate(fArr);
                    customVariable2.getValuesToInterpolate(fArr2);
                    for (int i34 = 0; i34 < numberOfInterpolatedValues; i34++) {
                        fArr[i34] = interpolate(fArr[i34], fArr2[i34], 0.0f, f10);
                        customVariable3.setValue(fArr);
                    }
                }
            }
        }
    }

    private void serializeAnchor(StringBuilder sb2, ConstraintAnchor.Type type) {
        ConstraintAnchor anchor = this.widget.getAnchor(type);
        if (anchor == null || anchor.mTarget == null) {
            return;
        }
        sb2.append("Anchor");
        sb2.append(type.name());
        sb2.append(": ['");
        String str = anchor.mTarget.getOwner().stringId;
        if (str == null) {
            str = "#PARENT";
        }
        sb2.append(str);
        sb2.append("', '");
        sb2.append(anchor.mTarget.getType().name());
        sb2.append("', '");
        sb2.append(anchor.mMargin);
        sb2.append("'],\n");
    }

    public void addCustomColor(String str, int i10) {
        setCustomAttribute(str, 902, i10);
    }

    public void addCustomFloat(String str, float f10) {
        setCustomAttribute(str, 901, f10);
    }

    public float centerX() {
        return this.left + ((this.right - r0) / 2.0f);
    }

    public float centerY() {
        return this.top + ((this.bottom - r0) / 2.0f);
    }

    public CustomVariable getCustomAttribute(String str) {
        return this.mCustom.get(str);
    }

    public Set<String> getCustomAttributeNames() {
        return this.mCustom.o();
    }

    public int getCustomColor(String str) {
        if (this.mCustom.containsKey(str)) {
            return this.mCustom.get(str).getColorValue();
        }
        return -21880;
    }

    public float getCustomFloat(String str) {
        if (this.mCustom.containsKey(str)) {
            return this.mCustom.get(str).getFloatValue();
        }
        return Float.NaN;
    }

    public String getId() {
        ConstraintWidget constraintWidget = this.widget;
        return constraintWidget == null ? "unknown" : constraintWidget.stringId;
    }

    public int height() {
        return Math.max(0, this.bottom - this.top);
    }

    public boolean isDefaultTransform() {
        return Float.isNaN(this.rotationX) && Float.isNaN(this.rotationY) && Float.isNaN(this.rotationZ) && Float.isNaN(this.translationX) && Float.isNaN(this.translationY) && Float.isNaN(this.translationZ) && Float.isNaN(this.scaleX) && Float.isNaN(this.scaleY) && Float.isNaN(this.alpha);
    }

    public void logv(String str) {
        String str2;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str3 = (".(" + stackTraceElement.getFileName() + s.f32937c + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName()) + " " + (hashCode() % 1000);
        if (this.widget != null) {
            str2 = str3 + "/" + (this.widget.hashCode() % 1000);
        } else {
            str2 = str3 + "/NULL";
        }
        System.out.println(str2 + " " + str);
    }

    public void parseCustom(CLElement cLElement) throws CLParsingException {
        CLObject cLObject = (CLObject) cLElement;
        int size = cLObject.size();
        for (int i10 = 0; i10 < size; i10++) {
            CLKey cLKey = (CLKey) cLObject.get(i10);
            cLKey.content();
            CLElement value = cLKey.getValue();
            String content = value.content();
            if (content.matches("#[0-9a-fA-F]+")) {
                setCustomAttribute(cLKey.content(), 902, Integer.parseInt(content.substring(1), 16));
            } else if (value instanceof CLNumber) {
                setCustomAttribute(cLKey.content(), 901, value.getFloat());
            } else {
                setCustomAttribute(cLKey.content(), TypedValues.Custom.TYPE_STRING, content);
            }
        }
    }

    public void printCustomAttributes() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str = (".(" + stackTraceElement.getFileName() + s.f32937c + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName()) + " " + (hashCode() % 1000);
        String str2 = this.widget != null ? str + "/" + (this.widget.hashCode() % 1000) + " " : str + "/NULL ";
        HashMap<String, CustomVariable> hashMap = this.mCustom;
        if (hashMap != null) {
            for (String str3 : hashMap.o()) {
                System.out.println(str2 + this.mCustom.get(str3).toString());
            }
        }
    }

    public StringBuilder serialize(StringBuilder sb2) {
        return serialize(sb2, false);
    }

    public void setCustomAttribute(String str, int i10, float f10) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setFloatValue(f10);
        } else {
            this.mCustom.put(str, new CustomVariable(str, i10, f10));
        }
    }

    public void setCustomValue(CustomAttribute customAttribute, float[] fArr) {
    }

    public boolean setValue(String str, CLElement cLElement) throws CLParsingException {
        str.hashCode();
        char c10 = '\uffff';
        switch (str.hashCode()) {
            case -1881940865:
                if (str.equals("phone_orientation")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1383228885:
                if (str.equals("bottom")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1349088399:
                if (str.equals(Ce.h.f4304o)) {
                    c10 = 2;
                    break;
                }
                break;
            case -1249320806:
                if (str.equals("rotationX")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c10 = 4;
                    break;
                }
                break;
            case -1249320804:
                if (str.equals("rotationZ")) {
                    c10 = 5;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c10 = 6;
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c10 = 7;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c10 = '\b';
                    break;
                }
                break;
            case -987906986:
                if (str.equals("pivotX")) {
                    c10 = '\t';
                    break;
                }
                break;
            case -987906985:
                if (str.equals("pivotY")) {
                    c10 = '\n';
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 115029:
                if (str.equals("top")) {
                    c10 = CharUtils.CR;
                    break;
                }
                break;
            case 3317767:
                if (str.equals(m.f88234c)) {
                    c10 = 14;
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c10 = 15;
                    break;
                }
                break;
            case 108511772:
                if (str.equals("right")) {
                    c10 = 16;
                    break;
                }
                break;
            case 642850769:
                if (str.equals("interpolatedPos")) {
                    c10 = 17;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                phone_orientation = cLElement.getFloat();
                return true;
            case 1:
                this.bottom = cLElement.getInt();
                return true;
            case 2:
                parseCustom(cLElement);
                return true;
            case 3:
                this.rotationX = cLElement.getFloat();
                return true;
            case 4:
                this.rotationY = cLElement.getFloat();
                return true;
            case 5:
                this.rotationZ = cLElement.getFloat();
                return true;
            case 6:
                this.translationX = cLElement.getFloat();
                return true;
            case 7:
                this.translationY = cLElement.getFloat();
                return true;
            case '\b':
                this.translationZ = cLElement.getFloat();
                return true;
            case '\t':
                this.pivotX = cLElement.getFloat();
                return true;
            case '\n':
                this.pivotY = cLElement.getFloat();
                return true;
            case 11:
                this.scaleX = cLElement.getFloat();
                return true;
            case '\f':
                this.scaleY = cLElement.getFloat();
                return true;
            case '\r':
                this.top = cLElement.getInt();
                return true;
            case 14:
                this.left = cLElement.getInt();
                return true;
            case 15:
                this.alpha = cLElement.getFloat();
                return true;
            case 16:
                this.right = cLElement.getInt();
                return true;
            case 17:
                this.interpolatedPos = cLElement.getFloat();
                return true;
            default:
                return false;
        }
    }

    public WidgetFrame update() {
        ConstraintWidget constraintWidget = this.widget;
        if (constraintWidget != null) {
            this.left = constraintWidget.getLeft();
            this.top = this.widget.getTop();
            this.right = this.widget.getRight();
            this.bottom = this.widget.getBottom();
            updateAttributes(this.widget.frame);
        }
        return this;
    }

    public void updateAttributes(WidgetFrame widgetFrame) {
        this.pivotX = widgetFrame.pivotX;
        this.pivotY = widgetFrame.pivotY;
        this.rotationX = widgetFrame.rotationX;
        this.rotationY = widgetFrame.rotationY;
        this.rotationZ = widgetFrame.rotationZ;
        this.translationX = widgetFrame.translationX;
        this.translationY = widgetFrame.translationY;
        this.translationZ = widgetFrame.translationZ;
        this.scaleX = widgetFrame.scaleX;
        this.scaleY = widgetFrame.scaleY;
        this.alpha = widgetFrame.alpha;
        this.visibility = widgetFrame.visibility;
        this.mCustom.clear();
        for (CustomVariable customVariable : widgetFrame.mCustom.values()) {
            this.mCustom.put(customVariable.getName(), customVariable.copy());
        }
    }

    public int width() {
        return Math.max(0, this.right - this.left);
    }

    public StringBuilder serialize(StringBuilder sb2, boolean z10) {
        sb2.append("{\n");
        add(sb2, m.f88234c, this.left);
        add(sb2, "top", this.top);
        add(sb2, "right", this.right);
        add(sb2, "bottom", this.bottom);
        add(sb2, "pivotX", this.pivotX);
        add(sb2, "pivotY", this.pivotY);
        add(sb2, "rotationX", this.rotationX);
        add(sb2, "rotationY", this.rotationY);
        add(sb2, "rotationZ", this.rotationZ);
        add(sb2, "translationX", this.translationX);
        add(sb2, "translationY", this.translationY);
        add(sb2, "translationZ", this.translationZ);
        add(sb2, "scaleX", this.scaleX);
        add(sb2, "scaleY", this.scaleY);
        add(sb2, "alpha", this.alpha);
        add(sb2, "visibility", this.visibility);
        add(sb2, "interpolatedPos", this.interpolatedPos);
        if (this.widget != null) {
            for (ConstraintAnchor.Type type : ConstraintAnchor.Type.values()) {
                serializeAnchor(sb2, type);
            }
        }
        if (z10) {
            add(sb2, "phone_orientation", phone_orientation);
        }
        if (z10) {
            add(sb2, "phone_orientation", phone_orientation);
        }
        if (this.mCustom.size() != 0) {
            sb2.append("custom : {\n");
            for (String str : this.mCustom.o()) {
                CustomVariable customVariable = this.mCustom.get(str);
                sb2.append(str);
                sb2.append(": ");
                switch (customVariable.getType()) {
                    case 900:
                        sb2.append(customVariable.getIntegerValue());
                        sb2.append(",\n");
                        break;
                    case 901:
                    case TypedValues.Custom.TYPE_DIMENSION:
                        sb2.append(customVariable.getFloatValue());
                        sb2.append(",\n");
                        break;
                    case 902:
                        sb2.append("'");
                        sb2.append(CustomVariable.colorString(customVariable.getIntegerValue()));
                        sb2.append("',\n");
                        break;
                    case TypedValues.Custom.TYPE_STRING:
                        sb2.append("'");
                        sb2.append(customVariable.getStringValue());
                        sb2.append("',\n");
                        break;
                    case TypedValues.Custom.TYPE_BOOLEAN:
                        sb2.append("'");
                        sb2.append(customVariable.getBooleanValue());
                        sb2.append("',\n");
                        break;
                }
            }
            sb2.append("}\n");
        }
        sb2.append("}\n");
        return sb2;
    }

    public void setCustomAttribute(String str, int i10, int i11) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setIntValue(i11);
        } else {
            this.mCustom.put(str, new CustomVariable(str, i10, i11));
        }
    }

    private static void add(StringBuilder sb2, String str, float f10) {
        if (Float.isNaN(f10)) {
            return;
        }
        sb2.append(str);
        sb2.append(": ");
        sb2.append(f10);
        sb2.append(",\n");
    }

    public void setCustomAttribute(String str, int i10, boolean z10) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setBooleanValue(z10);
        } else {
            this.mCustom.put(str, new CustomVariable(str, i10, z10));
        }
    }

    public WidgetFrame update(ConstraintWidget constraintWidget) {
        if (constraintWidget == null) {
            return this;
        }
        this.widget = constraintWidget;
        update();
        return this;
    }

    public void setCustomAttribute(String str, int i10, String str2) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setStringValue(str2);
        } else {
            this.mCustom.put(str, new CustomVariable(str, i10, str2));
        }
    }

    public WidgetFrame(ConstraintWidget constraintWidget) {
        this.widget = null;
        this.left = 0;
        this.top = 0;
        this.right = 0;
        this.bottom = 0;
        this.pivotX = Float.NaN;
        this.pivotY = Float.NaN;
        this.rotationX = Float.NaN;
        this.rotationY = Float.NaN;
        this.rotationZ = Float.NaN;
        this.translationX = Float.NaN;
        this.translationY = Float.NaN;
        this.translationZ = Float.NaN;
        this.scaleX = Float.NaN;
        this.scaleY = Float.NaN;
        this.alpha = Float.NaN;
        this.interpolatedPos = Float.NaN;
        this.visibility = 0;
        this.mCustom = new HashMap<>();
        this.name = null;
        this.widget = constraintWidget;
    }

    public WidgetFrame(WidgetFrame widgetFrame) {
        this.widget = null;
        this.left = 0;
        this.top = 0;
        this.right = 0;
        this.bottom = 0;
        this.pivotX = Float.NaN;
        this.pivotY = Float.NaN;
        this.rotationX = Float.NaN;
        this.rotationY = Float.NaN;
        this.rotationZ = Float.NaN;
        this.translationX = Float.NaN;
        this.translationY = Float.NaN;
        this.translationZ = Float.NaN;
        this.scaleX = Float.NaN;
        this.scaleY = Float.NaN;
        this.alpha = Float.NaN;
        this.interpolatedPos = Float.NaN;
        this.visibility = 0;
        this.mCustom = new HashMap<>();
        this.name = null;
        this.widget = widgetFrame.widget;
        this.left = widgetFrame.left;
        this.top = widgetFrame.top;
        this.right = widgetFrame.right;
        this.bottom = widgetFrame.bottom;
        updateAttributes(widgetFrame);
    }

    private static float interpolate(float f10, float f11, float f12, float f13) {
        boolean isNaN = Float.isNaN(f10);
        boolean isNaN2 = Float.isNaN(f11);
        if (isNaN && isNaN2) {
            return Float.NaN;
        }
        if (isNaN) {
            f10 = f12;
        }
        if (isNaN2) {
            f11 = f12;
        }
        return f10 + (f13 * (f11 - f10));
    }
}
