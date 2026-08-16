package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.core.R;
import androidx.core.math.MathUtils;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class ColorStateListInflaterCompat {
    private static final ThreadLocal<TypedValue> sTempTypedValue = new ThreadLocal<>();

    private ColorStateListInflaterCompat() {
    }

    public static ColorStateList createFromXml(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return createFromXmlInner(resources, xmlPullParser, asAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static ColorStateList createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            return inflate(resources, xmlPullParser, attributeSet, theme);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
    }

    private static TypedValue getTypedValue() {
        ThreadLocal<TypedValue> threadLocal = sTempTypedValue;
        TypedValue typedValue = threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }

    public static ColorStateList inflate(Resources resources, int i10, Resources.Theme theme) {
        try {
            return createFromXml(resources, resources.getXml(i10), theme);
        } catch (Exception e10) {
            Log.e("CSLCompat", "Failed to inflate ColorStateList.", e10);
            return null;
        }
    }

    private static boolean isColorInt(Resources resources, int i10) {
        TypedValue typedValue = getTypedValue();
        resources.getValue(i10, typedValue, true);
        int i11 = typedValue.type;
        return i11 >= 28 && i11 <= 31;
    }

    private static int modulateColorAlpha(int i10, float f10, float f11) {
        boolean z10 = f11 >= 0.0f && f11 <= 100.0f;
        if (f10 == 1.0f && !z10) {
            return i10;
        }
        int clamp = MathUtils.clamp((int) ((Color.alpha(i10) * f10) + 0.5f), 0, 255);
        if (z10) {
            CamColor fromColor = CamColor.fromColor(i10);
            i10 = CamColor.toColor(fromColor.getHue(), fromColor.getChroma(), f11);
        }
        return (i10 & 16777215) | (clamp << 24);
    }

    private static TypedArray obtainAttributes(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static ColorStateList inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int color;
        float f10;
        int attributeCount;
        int i10;
        Resources resources2 = resources;
        int i11 = 1;
        int depth2 = xmlPullParser.getDepth() + 1;
        int[][] iArr = new int[20];
        int[] iArr2 = new int[20];
        int i12 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == i11 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray obtainAttributes = obtainAttributes(resources2, theme, attributeSet, R.styleable.ColorStateListItem);
                int i13 = R.styleable.ColorStateListItem_android_color;
                int resourceId = obtainAttributes.getResourceId(i13, -1);
                if (resourceId != -1 && !isColorInt(resources2, resourceId)) {
                    try {
                        color = createFromXml(resources2, resources2.getXml(resourceId), theme).getDefaultColor();
                    } catch (Exception unused) {
                        color = obtainAttributes.getColor(R.styleable.ColorStateListItem_android_color, -65281);
                    }
                } else {
                    color = obtainAttributes.getColor(i13, -65281);
                }
                int i14 = R.styleable.ColorStateListItem_android_alpha;
                float f11 = 1.0f;
                if (obtainAttributes.hasValue(i14)) {
                    f11 = obtainAttributes.getFloat(i14, 1.0f);
                } else {
                    int i15 = R.styleable.ColorStateListItem_alpha;
                    if (obtainAttributes.hasValue(i15)) {
                        f11 = obtainAttributes.getFloat(i15, 1.0f);
                    }
                }
                if (Build.VERSION.SDK_INT >= 31) {
                    int i16 = R.styleable.ColorStateListItem_android_lStar;
                    if (obtainAttributes.hasValue(i16)) {
                        f10 = obtainAttributes.getFloat(i16, -1.0f);
                        obtainAttributes.recycle();
                        attributeCount = attributeSet.getAttributeCount();
                        int[] iArr3 = new int[attributeCount];
                        int i17 = 0;
                        for (i10 = 0; i10 < attributeCount; i10++) {
                            int attributeNameResource = attributeSet.getAttributeNameResource(i10);
                            if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != R.attr.alpha && attributeNameResource != R.attr.lStar) {
                                int i18 = i17 + 1;
                                if (!attributeSet.getAttributeBooleanValue(i10, false)) {
                                    attributeNameResource = -attributeNameResource;
                                }
                                iArr3[i17] = attributeNameResource;
                                i17 = i18;
                            }
                        }
                        int[] trimStateSet = StateSet.trimStateSet(iArr3, i17);
                        iArr2 = GrowingArrayUtils.append(iArr2, i12, modulateColorAlpha(color, f11, f10));
                        iArr = (int[][]) GrowingArrayUtils.append(iArr, i12, trimStateSet);
                        i12++;
                    }
                }
                f10 = obtainAttributes.getFloat(R.styleable.ColorStateListItem_lStar, -1.0f);
                obtainAttributes.recycle();
                attributeCount = attributeSet.getAttributeCount();
                int[] iArr32 = new int[attributeCount];
                int i172 = 0;
                while (i10 < attributeCount) {
                }
                int[] trimStateSet2 = StateSet.trimStateSet(iArr32, i172);
                iArr2 = GrowingArrayUtils.append(iArr2, i12, modulateColorAlpha(color, f11, f10));
                iArr = (int[][]) GrowingArrayUtils.append(iArr, i12, trimStateSet2);
                i12++;
            }
            i11 = 1;
            resources2 = resources;
        }
        int[] iArr4 = new int[i12];
        int[][] iArr5 = new int[i12];
        System.arraycopy(iArr2, 0, iArr4, 0, i12);
        System.arraycopy(iArr, 0, iArr5, 0, i12);
        return new ColorStateList(iArr5, iArr4);
    }
}
