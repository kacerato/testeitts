package JAVARuntime;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Input.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Input.class
  classes.dex
 */
@ClassCategory(cat = {"Input"})
public final class Input {
    public static final GamePad gamePad = new GamePad();
    public static final Keyboard keyboard = new Keyboard();
    public static final Mouse mouse = new Mouse();

    private Input() {
    }

    public static boolean haveKey(String str) {
        return false;
    }

    public static Key getKey(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        return registerKey(str);
    }

    public static Key registerKey(String str) {
        return null;
    }

    public static void registerKey(Key key) {
    }

    public static boolean isKeyDown(String str) {
        return false;
    }

    public static boolean isKeyPressed(String str) {
        return false;
    }

    public static boolean isKeyUp(String str) {
        return false;
    }

    public static Touch getTouch(int i10) {
        return null;
    }

    public static Vector2 getTouchPosition(int i10) {
        return null;
    }

    public static Vector2 getTouchPosition(int i10, Vector2 vector2) {
        return null;
    }

    public static boolean isTouchDown(int i10) {
        return false;
    }

    public static boolean isTouchPressed(int i10) {
        return false;
    }

    public static boolean isTouchUp(int i10) {
        return false;
    }

    public static Axis getAxis(String str) {
        return null;
    }

    public static Axis registerAxis(String str) {
        return null;
    }

    public static Vector2 getAxisValue(String str) {
        return null;
    }

    public static Vector2 getMaxSlide() {
        return null;
    }

    public static boolean isKeyboardOpen() {
        return false;
    }

    public static void addKeyboardRequest(Component component) {
    }

    public static void removeKeyboardRequest(Component component) {
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Input$GamePad.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Input$GamePad.class
  classes.dex
 */
    public static class GamePad {
        public boolean isConnected() {
            return false;
        }

        public GamePadButton getButton(String str) {
            return null;
        }

        public float getAxis(String str) {
            return 0.0f;
        }

        public Vector2 getLeftJoystick() {
            return null;
        }

        public Vector2 getRightJoystick() {
            return null;
        }

        public String[] getAvailableButtons() {
            return null;
        }

        public String[] getAvailableAxis() {
            return null;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Input$Keyboard.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Input$Keyboard.class
  classes.dex
 */
    public static class Keyboard {
        public KeyboardButton getKey(String str) {
            return null;
        }

        public boolean isKeyPressed(String str) {
            KeyboardButton key = getKey(str);
            if (key == null) {
                return false;
            }
            return key.isPressed();
        }

        public boolean isKeyDown(String str) {
            KeyboardButton key = getKey(str);
            if (key == null) {
                return false;
            }
            return key.isDown();
        }

        public boolean isKeyUp(String str) {
            KeyboardButton key = getKey(str);
            if (key == null) {
                return false;
            }
            return key.isUp();
        }

        public List<KeyboardButton> getDownButtons() {
            return null;
        }

        public List<KeyboardButton> getPressedButtons() {
            return null;
        }

        public List<KeyboardButton> getUpButtons() {
            return null;
        }

        public String[] getAvailableKeys() {
            return null;
        }

        public boolean isCapslockOn() {
            return false;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Input$Mouse.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Input$Mouse.class
  classes.dex
 */
    public static class Mouse {
        public int getX() {
            return 0;
        }

        public int getY() {
            return 0;
        }

        public float getSlideX() {
            return 0.0f;
        }

        public float getSlideY() {
            return 0.0f;
        }

        public float getVerticalScroll() {
            return 0.0f;
        }

        public boolean isLeftClickPressed() {
            return false;
        }

        public boolean isLeftClickDown() {
            return false;
        }

        public boolean isLeftClickLongPressed() {
            return false;
        }

        public boolean isLeftClickLongDown() {
            return false;
        }

        public boolean isLeftClickUp() {
            return false;
        }

        public boolean isRightClickPressed() {
            return false;
        }

        public boolean isRightClickDown() {
            return false;
        }

        public boolean isRightClickLongPressed() {
            return false;
        }

        public boolean isRightClickLongDown() {
            return false;
        }

        public boolean isRightClickUp() {
            return false;
        }

        public void requestCapture(Component component) {
        }

        public void releaseCapture(Component component) {
        }

        public boolean isConnected() {
            return false;
        }
    }
}
