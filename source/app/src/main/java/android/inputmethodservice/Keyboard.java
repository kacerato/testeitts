package android.inputmethodservice;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/inputmethodservice/Keyboard.class
 */
public class Keyboard {
    public static final int EDGE_BOTTOM = 8;
    public static final int EDGE_LEFT = 1;
    public static final int EDGE_RIGHT = 2;
    public static final int EDGE_TOP = 4;
    public static final int KEYCODE_ALT = -6;
    public static final int KEYCODE_CANCEL = -3;
    public static final int KEYCODE_DELETE = -5;
    public static final int KEYCODE_DONE = -4;
    public static final int KEYCODE_MODE_CHANGE = -2;
    public static final int KEYCODE_SHIFT = -1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/inputmethodservice/Keyboard$Row.class
 */
    public static class Row {
        public int defaultHeight;
        public int defaultHorizontalGap;
        public int defaultWidth;
        public int mode;
        public int rowEdgeFlags;
        public int verticalGap;

        public Row(Keyboard parent) {
            throw new RuntimeException("Stub!");
        }

        public Row(Resources res, Keyboard parent, XmlResourceParser parser) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/inputmethodservice/Keyboard$Key.class
 */
    public static class Key {
        public int[] codes = null;
        public int edgeFlags;
        public int gap;
        public int height;
        public Drawable icon;
        public Drawable iconPreview;
        public CharSequence label;
        public boolean modifier;

        public boolean f32434on;
        public CharSequence popupCharacters;
        public int popupResId;
        public boolean pressed;
        public boolean repeatable;
        public boolean sticky;
        public CharSequence text;
        public int width;

        public int f32435x;

        public int f32436y;

        public Key(Row parent) {
            throw new RuntimeException("Stub!");
        }

        public Key(Resources res, Row parent, int x10, int y10, XmlResourceParser parser) {
            throw new RuntimeException("Stub!");
        }

        public void onPressed() {
            throw new RuntimeException("Stub!");
        }

        public void onReleased(boolean inside) {
            throw new RuntimeException("Stub!");
        }

        public boolean isInside(int x10, int y10) {
            throw new RuntimeException("Stub!");
        }

        public int squaredDistanceFrom(int x10, int y10) {
            throw new RuntimeException("Stub!");
        }

        public int[] getCurrentDrawableState() {
            throw new RuntimeException("Stub!");
        }
    }

    public Keyboard(Context context, int xmlLayoutResId) {
        throw new RuntimeException("Stub!");
    }

    public Keyboard(Context context, int xmlLayoutResId, int modeId, int width, int height) {
        throw new RuntimeException("Stub!");
    }

    public Keyboard(Context context, int xmlLayoutResId, int modeId) {
        throw new RuntimeException("Stub!");
    }

    public Keyboard(Context context, int layoutTemplateResId, CharSequence characters, int columns, int horizontalPadding) {
        throw new RuntimeException("Stub!");
    }

    public List<Key> getKeys() {
        throw new RuntimeException("Stub!");
    }

    public List<Key> getModifierKeys() {
        throw new RuntimeException("Stub!");
    }

    protected int getHorizontalGap() {
        throw new RuntimeException("Stub!");
    }

    protected void setHorizontalGap(int gap) {
        throw new RuntimeException("Stub!");
    }

    protected int getVerticalGap() {
        throw new RuntimeException("Stub!");
    }

    protected void setVerticalGap(int gap) {
        throw new RuntimeException("Stub!");
    }

    protected int getKeyHeight() {
        throw new RuntimeException("Stub!");
    }

    protected void setKeyHeight(int height) {
        throw new RuntimeException("Stub!");
    }

    protected int getKeyWidth() {
        throw new RuntimeException("Stub!");
    }

    protected void setKeyWidth(int width) {
        throw new RuntimeException("Stub!");
    }

    public int getHeight() {
        throw new RuntimeException("Stub!");
    }

    public int getMinWidth() {
        throw new RuntimeException("Stub!");
    }

    public boolean setShifted(boolean shiftState) {
        throw new RuntimeException("Stub!");
    }

    public boolean isShifted() {
        throw new RuntimeException("Stub!");
    }

    public int getShiftKeyIndex() {
        throw new RuntimeException("Stub!");
    }

    public int[] getNearestKeys(int x10, int y10) {
        throw new RuntimeException("Stub!");
    }

    protected Row createRowFromXml(Resources res, XmlResourceParser parser) {
        throw new RuntimeException("Stub!");
    }

    protected Key createKeyFromXml(Resources res, Row parent, int x10, int y10, XmlResourceParser parser) {
        throw new RuntimeException("Stub!");
    }
}
