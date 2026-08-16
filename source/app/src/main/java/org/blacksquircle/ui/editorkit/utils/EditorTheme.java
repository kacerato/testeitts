package org.blacksquircle.ui.editorkit.utils;

import F6.c;
import android.graphics.Color;
import org.blacksquircle.ui.language.base.model.ColorScheme;
import org.jetbrains.annotations.NotNull;

public final class EditorTheme {

    @NotNull
    public static final EditorTheme INSTANCE = new EditorTheme();

    @NotNull
    private static final ColorScheme ANDROID_STUDIO = new ColorScheme(Color.parseColor("#ABB7C5"), Color.parseColor("#1f1f1f"), Color.parseColor("#2e2e2e"), Color.parseColor("#555555"), Color.parseColor("#A4A3A3"), Color.parseColor("#616366"), Color.parseColor("#3A3A3A"), Color.parseColor("#28427F"), Color.parseColor("#987DAC"), Color.parseColor("#33654B"), Color.parseColor("#33654B"), Color.parseColor("#6897BB"), Color.parseColor("#E8E2B7"), Color.parseColor("#EC7600"), Color.parseColor("#EC7600"), Color.parseColor("#EC7600"), Color.parseColor("#C9C54E"), Color.parseColor("#9378A7"), Color.parseColor("#FEC76C"), Color.parseColor("#6E875A"), Color.parseColor("#66747B"), Color.parseColor("#E2C077"), Color.parseColor("#E2C077"), Color.parseColor("#BABABA"), Color.parseColor("#ABC16D"), Color.parseColor("#6897BB"), Color.parseColor("#ff0000"), Color.parseColor("#f1c40f"));

    @NotNull
    private static final ColorScheme DARCULA = new ColorScheme(Color.parseColor("#ABB7C5"), Color.parseColor("#303030"), Color.parseColor("#313335"), Color.parseColor("#555555"), Color.parseColor("#A4A3A3"), Color.parseColor("#616366"), Color.parseColor("#3A3A3A"), Color.parseColor("#28427F"), Color.parseColor("#987DAC"), Color.parseColor("#33654B"), Color.parseColor("#33654B"), Color.parseColor("#6897BB"), Color.parseColor("#E8E2B7"), Color.parseColor("#EC7600"), Color.parseColor("#EC7600"), Color.parseColor("#EC7600"), Color.parseColor("#C9C54E"), Color.parseColor("#9378A7"), Color.parseColor("#FEC76C"), Color.parseColor("#6E875A"), Color.parseColor("#66747B"), Color.parseColor("#E2C077"), Color.parseColor("#E2C077"), Color.parseColor("#BABABA"), Color.parseColor("#ABC16D"), Color.parseColor("#6897BB"), Color.parseColor("#ff0000"), Color.parseColor("#f1c40f"));

    @NotNull
    private static final ColorScheme MONOKAI = new ColorScheme(Color.parseColor("#F8F8F8"), Color.parseColor("#272823"), Color.parseColor("#272823"), Color.parseColor("#5B5A4F"), Color.parseColor("#C8BBAC"), Color.parseColor("#5B5A4F"), Color.parseColor("#34352D"), Color.parseColor("#666666"), Color.parseColor("#7CE0F3"), Color.parseColor("#5F5E5A"), Color.parseColor("#5F5E5A"), Color.parseColor("#BB8FF8"), Color.parseColor("#F8F8F2"), Color.parseColor("#EB347E"), Color.parseColor("#7FD0E4"), Color.parseColor("#EB347E"), Color.parseColor("#EB347E"), Color.parseColor("#7FD0E4"), Color.parseColor("#B6E951"), Color.parseColor("#EBE48C"), Color.parseColor("#89826D"), Color.parseColor("#F8F8F8"), Color.parseColor("#EB347E"), Color.parseColor("#B6E951"), Color.parseColor("#EBE48C"), Color.parseColor("#BB8FF8"), Color.parseColor("#ff0000"), Color.parseColor("#f1c40f"));

    @NotNull
    private static final ColorScheme OBSIDIAN = new ColorScheme(Color.parseColor("#E0E2E4"), Color.parseColor("#2A3134"), Color.parseColor("#2A3134"), Color.parseColor("#67777B"), Color.parseColor("#E0E0E0"), Color.parseColor("#859599"), Color.parseColor("#31393C"), Color.parseColor("#616161"), Color.parseColor("#9EC56F"), Color.parseColor("#838177"), Color.parseColor("#616161"), Color.parseColor("#F8CE4E"), Color.parseColor("#E7E2BC"), Color.parseColor("#9EC56F"), Color.parseColor("#9EC56F"), Color.parseColor("#9EC56F"), Color.parseColor("#9B84B9"), Color.parseColor("#6E8BAE"), Color.parseColor("#E7E2BC"), Color.parseColor("#DE7C2E"), Color.parseColor("#808C92"), Color.parseColor("#E7E2BC"), Color.parseColor("#9EC56F"), Color.parseColor("#E0E2E4"), Color.parseColor("#DE7C2E"), Color.parseColor("#F8CE4E"), Color.parseColor("#ff0000"), Color.parseColor("#f1c40f"));

    @NotNull
    private static final ColorScheme LADIES_NIGHT = new ColorScheme(Color.parseColor("#E0E2E4"), Color.parseColor("#22282C"), Color.parseColor("#2A3134"), Color.parseColor("#4F575A"), Color.parseColor("#E0E2E4"), Color.parseColor("#859599"), Color.parseColor("#373340"), Color.parseColor("#5B2B41"), Color.parseColor("#6E8BAE"), Color.parseColor("#8A4364"), Color.parseColor("#616161"), Color.parseColor("#7EFBFD"), Color.parseColor("#E7E2BC"), Color.parseColor("#DA89A2"), Color.parseColor("#DA89A2"), Color.parseColor("#DA89A2"), Color.parseColor("#9B84B9"), Color.parseColor("#6EA4C7"), Color.parseColor("#8FB4C5"), Color.parseColor("#75D367"), Color.parseColor("#808C92"), Color.parseColor("#E7E2BC"), Color.parseColor("#DA89A2"), Color.parseColor("#E0E2E4"), Color.parseColor("#75D367"), Color.parseColor("#7EFBFD"), Color.parseColor("#ff0000"), Color.parseColor("#f1c40f"));

    @NotNull
    private static final ColorScheme TOMORROW_NIGHT = new ColorScheme(Color.parseColor("#C6C8C6"), Color.parseColor("#222426"), Color.parseColor("#222426"), Color.parseColor("#4B4D51"), Color.parseColor("#FFFFFF"), Color.parseColor("#C6C8C6"), Color.parseColor("#2D2F33"), Color.parseColor("#383B40"), Color.parseColor("#EAC780"), Color.parseColor("#4B4E54"), Color.parseColor("#616161"), Color.parseColor("#D49668"), Color.parseColor("#CFD1CF"), Color.parseColor("#AD95B8"), Color.parseColor("#AD95B8"), Color.parseColor("#AD95B8"), Color.parseColor("#CFD1CF"), Color.parseColor("#EAC780"), Color.parseColor("#87A1BB"), Color.parseColor("#B7BC73"), Color.parseColor("#969896"), Color.parseColor("#CFD1CF"), Color.parseColor("#AD95B8"), Color.parseColor("#C6C8C6"), Color.parseColor("#B7BC73"), Color.parseColor("#D49668"), Color.parseColor("#ff0000"), Color.parseColor("#f1c40f"));

    @NotNull
    private static final ColorScheme VISUAL_STUDIO_2013 = new ColorScheme(Color.parseColor("#C8C8C8"), Color.parseColor("#232323"), Color.parseColor("#2C2C2C"), Color.parseColor("#555555"), Color.parseColor("#FFFFFF"), Color.parseColor("#C6C8C6"), Color.parseColor("#141414"), Color.parseColor("#454464"), Color.parseColor("#4F98F7"), Color.parseColor("#1C3D6B"), Color.parseColor("#616161"), Color.parseColor("#BACDAB"), Color.parseColor("#DCDCDC"), Color.parseColor("#669BD1"), Color.parseColor("#669BD1"), Color.parseColor("#669BD1"), Color.parseColor("#C49594"), Color.parseColor("#9DDDFF"), Color.parseColor("#71C6B1"), Color.parseColor("#CE9F89"), Color.parseColor("#6BA455"), Color.parseColor("#DCDCDC"), Color.parseColor("#669BD1"), Color.parseColor("#C8C8C8"), Color.parseColor("#CE9F89"), Color.parseColor("#BACDAB"), Color.parseColor("#ff0000"), Color.parseColor("#f1c40f"));

    private EditorTheme() {
    }

    @c
    public static void getANDROID_STUDIO$annotations() {
    }

    @NotNull
    public final ColorScheme getANDROID_STUDIO() {
        return ANDROID_STUDIO;
    }

    @NotNull
    public final ColorScheme getDARCULA() {
        return DARCULA;
    }

    @NotNull
    public final ColorScheme getLADIES_NIGHT() {
        return LADIES_NIGHT;
    }

    @NotNull
    public final ColorScheme getMONOKAI() {
        return MONOKAI;
    }

    @NotNull
    public final ColorScheme getOBSIDIAN() {
        return OBSIDIAN;
    }

    @NotNull
    public final ColorScheme getTOMORROW_NIGHT() {
        return TOMORROW_NIGHT;
    }

    @NotNull
    public final ColorScheme getVISUAL_STUDIO_2013() {
        return VISUAL_STUDIO_2013;
    }
}
