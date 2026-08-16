package s5;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.EditText;
import android.widget.ImageView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.Normalizer;
import java.util.Locale;

public class C15233a {

    public static final int f109189a = 40;

    public static String a(String projectName) {
        String f10 = f(projectName);
        if (f10.isEmpty()) {
            f10 = "app";
        }
        return "com.itsmagic." + f10;
    }

    public static String b(String launcherTitle) {
        String g10 = g(launcherTitle);
        if (g10 == null || g10.isEmpty()) {
            return "app";
        }
        String replaceAll = Normalizer.normalize(g10, Normalizer.Form.NFD).replaceAll("\\p{M}+", "");
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < replaceAll.length(); i10++) {
            char charAt = replaceAll.charAt(i10);
            if (Character.isLetterOrDigit(charAt)) {
                sb2.append(Character.toLowerCase(charAt));
            }
        }
        if (sb2.length() == 0 || !Character.isLetter(sb2.charAt(0))) {
            sb2.insert(0, "app");
        }
        String lowerCase = sb2.toString().toLowerCase(Locale.ROOT);
        return lowerCase.length() > 24 ? lowerCase.substring(0, 24) : lowerCase;
    }

    public static void c(File f10, String destination, ImageView icon) {
        Bitmap bitmap;
        try {
            try {
                bitmap = Bitmap.createScaledBitmap(BitmapFactory.decodeStream(new FileInputStream(f10)), 512, 512, true);
            } catch (Exception e10) {
                e10.printStackTrace();
                bitmap = null;
            }
            File file = new File(Tc.b.u(destination));
            if (!file.exists()) {
                file.mkdirs();
            }
            if (!new File(destination).exists()) {
                try {
                    new File(destination).createNewFile();
                } catch (IOException e11) {
                    e11.printStackTrace();
                }
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(destination);
                try {
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                    icon.setImageBitmap(bitmap);
                    fileOutputStream.close();
                } finally {
                }
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        } catch (Exception e13) {
            e13.printStackTrace();
        }
    }

    public static void d(Context context, ImageView icon) {
        try {
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/_EDITOR/APP/Settings/Icon/512x.png");
            if (file.exists()) {
                FileInputStream fileInputStream = new FileInputStream(file);
                icon.setImageBitmap(BitmapFactory.decodeStream(fileInputStream));
                fileInputStream.close();
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public static String e(String value) {
        if (value == null) {
            return null;
        }
        String lowerCase = value.trim().toLowerCase(Locale.ROOT);
        if (lowerCase.isEmpty()) {
            return lowerCase;
        }
        String[] split = lowerCase.split("\\.+");
        StringBuilder sb2 = new StringBuilder();
        for (String str : split) {
            String f10 = f(str);
            if (!f10.isEmpty()) {
                if (sb2.length() > 0) {
                    sb2.append('.');
                }
                sb2.append(f10);
            }
        }
        return sb2.toString();
    }

    public static String f(String value) {
        if (value == null) {
            return "";
        }
        String lowerCase = Normalizer.normalize(value, Normalizer.Form.NFD).replaceAll("\\p{M}+", "").toLowerCase(Locale.ROOT);
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < lowerCase.length(); i10++) {
            char charAt = lowerCase.charAt(i10);
            if (Character.isLetterOrDigit(charAt) || charAt == '_') {
                sb2.append(charAt);
            }
        }
        if (sb2.length() == 0) {
            return "";
        }
        if (!Character.isLetter(sb2.charAt(0))) {
            sb2.insert(0, "app");
        }
        return sb2.toString();
    }

    public static String g(String value) {
        if (value == null) {
            return null;
        }
        return value.trim().replaceAll("\\s+", " ");
    }

    public static boolean h(String value, String name, EditText edit) {
        String e10 = e(value);
        if (e10 == null || e10.isEmpty()) {
            edit.setError(k(Lang.l(Lang.T.ASSISTANCE_EXPORT_VALIDATION_INVALID_FIELD), name));
            return false;
        }
        String[] split = e10.split("\\.");
        if (split.length < 2) {
            edit.setError(k(Lang.l(Lang.T.ASSISTANCE_EXPORT_VALIDATION_APP_ID_TWO_SEGMENTS), name));
            return false;
        }
        for (String str : split) {
            if (str.isEmpty()) {
                edit.setError(k(Lang.l(Lang.T.ASSISTANCE_EXPORT_VALIDATION_APP_ID_EMPTY_SEGMENTS), name));
                return false;
            }
            if (!Character.isLetter(str.charAt(0))) {
                edit.setError(k(Lang.l(Lang.T.ASSISTANCE_EXPORT_VALIDATION_APP_ID_SEGMENT_START), name));
                return false;
            }
            for (int i10 = 0; i10 < str.length(); i10++) {
                char charAt = str.charAt(i10);
                if (!Character.isLetterOrDigit(charAt) && charAt != '_') {
                    edit.setError(l(Lang.l(Lang.T.ASSISTANCE_EXPORT_VALIDATION_APP_ID_ALLOWED_CHARS), name, charAt));
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean i(String v10, String name, EditText edit) {
        String g10 = g(v10);
        if (g10 == null) {
            edit.setError(k(Lang.l(Lang.T.ASSISTANCE_EXPORT_VALIDATION_INVALID_FIELD), name));
            return false;
        }
        if (g10.isEmpty()) {
            edit.setError(k(Lang.l(Lang.T.ASSISTANCE_EXPORT_VALIDATION_INVALID_FIELD), name));
            return false;
        }
        if (g10.length() > 40) {
            edit.setError(m(Lang.l(Lang.T.ASSISTANCE_EXPORT_VALIDATION_MAX_CHARACTERS), name, 40));
            return false;
        }
        if (!Character.isLetter(g10.charAt(0))) {
            edit.setError(k(Lang.l(Lang.T.ASSISTANCE_EXPORT_VALIDATION_FIRST_LETTER), name));
            return false;
        }
        for (int i10 = 0; i10 < g10.length(); i10++) {
            char charAt = g10.charAt(i10);
            if (!Character.isLetterOrDigit(charAt) && !Character.isWhitespace(charAt)) {
                edit.setError(l(Lang.l(Lang.T.ASSISTANCE_EXPORT_VALIDATION_ONLY_NUMBERS_LETTERS_AND_SPACES), name, charAt));
                return false;
            }
        }
        return true;
    }

    public static boolean j(String v10, String name, EditText edit) {
        if (v10 == null) {
            edit.setError(k(Lang.l(Lang.T.ASSISTANCE_EXPORT_VALIDATION_INVALID_FIELD), name));
            return false;
        }
        if (v10.isEmpty()) {
            edit.setError(k(Lang.l(Lang.T.ASSISTANCE_EXPORT_VALIDATION_INVALID_FIELD), name));
            return false;
        }
        if (!Character.isLetter(v10.charAt(0))) {
            edit.setError(k(Lang.l(Lang.T.ASSISTANCE_EXPORT_VALIDATION_FIRST_LETTER), name));
            return false;
        }
        for (int i10 = 0; i10 < v10.length(); i10++) {
            char charAt = v10.charAt(i10);
            if (!Character.isLetterOrDigit(charAt)) {
                edit.setError(l(Lang.l(Lang.T.ASSISTANCE_EXPORT_VALIDATION_ONLY_NUMBERS_AND_LETTERS), name, charAt));
                return false;
            }
        }
        return true;
    }

    public static String k(String template, String fieldName) {
        return template.replace("{FIELD}", fieldName);
    }

    public static String l(String template, String fieldName, char invalidChar) {
        return k(template, fieldName).replace("{CHAR}", String.valueOf(invalidChar));
    }

    public static String m(String template, String fieldName, int maxCharacters) {
        return k(template, fieldName).replace("{MAX}", String.valueOf(maxCharacters));
    }
}
