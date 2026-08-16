package com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem;

import Ac.b;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.cardview.widget.CardView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.CompoundButtonCompat;
import belka.us.androidtoggleswitch.widgets.ToggleSwitch;
import com.daimajia.numberprogressbar.NumberProgressBar;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.textfield.TextInputEditText;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine2.R;
import com.makeramen.roundedimageview.RoundedImageView;
import org.mohammedalaa.seekbar.RangeSeekBarView;
import zd.C16303d;

public final class a {

    public static final String f70702a = "theme:projects_panel_button";

    public static void a(View view, int[] legacyColors, int[] themeColors) {
        int k10;
        int k11;
        int k12;
        int k13;
        int k14;
        int k15;
        int k16;
        int k17;
        Drawable textCursorDrawable;
        if (view == null) {
            return;
        }
        if (view instanceof TextInputEditText) {
            TextInputEditText textInputEditText = (TextInputEditText) view;
            int i10 = Theme.i(Theme.T.HIGH_TEXT_COLOR);
            int i11 = Theme.i(Theme.T.MID_TEXT_COLOR);
            int i12 = Theme.i(Theme.T.PANEL_TOPBAR);
            textInputEditText.setTextColor(i10);
            textInputEditText.setHintTextColor(i11);
            textInputEditText.setHighlightColor(Theme.i(Theme.T.PRIMARY_DARK));
            ViewCompat.setBackgroundTintList(textInputEditText, ColorStateList.valueOf(i12));
            if (Build.VERSION.SDK_INT >= 29) {
                try {
                    textCursorDrawable = textInputEditText.getTextCursorDrawable();
                    if (textCursorDrawable != null) {
                        Drawable mutate = textCursorDrawable.mutate();
                        mutate.setTint(i10);
                        textInputEditText.setTextCursorDrawable(mutate);
                    }
                } catch (Exception unused) {
                }
            }
        }
        Object tag = view.getTag();
        if ((tag instanceof String) && f70702a.equals((String) tag)) {
            g(view);
            return;
        }
        if (view instanceof C16303d) {
            int[] n10 = n(view, "getSelectedIndicatorColors");
            if (n10 == null) {
                n10 = n(view, "getIndicatorColors");
            }
            if (n10 == null || n10.length <= 0) {
                Integer m10 = m(view, "getIndicatorColor");
                if (m10 == null || (k17 = k(m10.intValue(), legacyColors, themeColors)) == Integer.MIN_VALUE || o(view, "setIndicatorColor", k17)) {
                    return;
                }
                o(view, "setSelectedIndicatorColor", k17);
                return;
            }
            int[] iArr = (int[]) n10.clone();
            boolean z10 = false;
            for (int i13 = 0; i13 < n10.length; i13++) {
                int k18 = k(n10[i13], legacyColors, themeColors);
                if (k18 != Integer.MIN_VALUE) {
                    iArr[i13] = k18;
                    z10 = true;
                }
            }
            if (!z10 || p(view, "setSelectedIndicatorColors", iArr)) {
                return;
            }
            p(view, "setIndicatorColors", iArr);
            return;
        }
        if (view instanceof NumberProgressBar) {
            Integer j10 = j(m(view, "getReachedBarColor"), m(view, "getProgressReachedColor"));
            if (j10 != null && (k16 = k(j10.intValue(), legacyColors, themeColors)) != Integer.MIN_VALUE && !o(view, "setReachedBarColor", k16)) {
                o(view, "setProgressReachedColor", k16);
            }
            Integer j11 = j(m(view, "getUnreachedBarColor"), m(view, "getProgressUnreachedColor"));
            if (j11 != null && (k15 = k(j11.intValue(), legacyColors, themeColors)) != Integer.MIN_VALUE && !o(view, "setUnreachedBarColor", k15)) {
                o(view, "setProgressUnreachedColor", k15);
            }
            Integer j12 = j(m(view, "getTextColor"), m(view, "getProgressTextColor"));
            if (j12 == null || (k14 = k(j12.intValue(), legacyColors, themeColors)) == Integer.MIN_VALUE || o(view, "setTextColor", k14)) {
                return;
            }
            o(view, "setProgressTextColor", k14);
            return;
        }
        if (view instanceof ToggleSwitch) {
            Integer m11 = m(view, "getActiveBgColor");
            if (m11 != null && (k13 = k(m11.intValue(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
                o(view, "setActiveBgColor", k13);
            }
            Integer m12 = m(view, "getInactiveBgColor");
            if (m12 != null && (k12 = k(m12.intValue(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
                o(view, "setInactiveBgColor", k12);
            }
            Integer m13 = m(view, "getActiveTextColor");
            if (m13 != null && (k11 = k(m13.intValue(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
                o(view, "setActiveTextColor", k11);
            }
            Integer m14 = m(view, "getInactiveTextColor");
            if (m14 == null || (k10 = k(m14.intValue(), legacyColors, themeColors)) == Integer.MIN_VALUE) {
                return;
            }
            o(view, "setInactiveTextColor", k10);
        }
    }

    public static void b(View root, Context context) {
        if (context == null) {
            return;
        }
        int[] iArr = {context.getResources().getColor(R.color.interface_background), context.getResources().getColor(R.color.interface_container), context.getResources().getColor(R.color.interface_panel), context.getResources().getColor(R.color.interface_container_tittle), context.getResources().getColor(R.color.theme_high_text_color), context.getResources().getColor(R.color.interface_container_normal_textcolor), context.getResources().getColor(R.color.theme_high_text_color), context.getResources().getColor(R.color.interface_primary), context.getResources().getColor(R.color.interface_accent)};
        b bVar = Theme.T.BACKGROUND;
        b bVar2 = Theme.T.CARD;
        b bVar3 = Theme.T.PANEL_TOPBAR;
        b bVar4 = Theme.T.HIGH_TEXT_COLOR;
        i(root, context, iArr, new b[]{bVar, bVar2, bVar3, bVar3, bVar4, bVar4, bVar4, Theme.T.PRIMARY, Theme.T.ACCENT});
    }

    public static void c(View root, Context context) {
        i(root, context, null, null);
    }

    public static void d(View view, int[] legacyColors, int[] themeColors) {
        if (view == null) {
            return;
        }
        f(view, legacyColors, themeColors);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                d(viewGroup.getChildAt(i10), legacyColors, themeColors);
            }
        }
    }

    public static void e(Drawable drawable, int[] legacyColors, int[] themeColors) {
        int k10;
        int k11;
        int k12;
        if (drawable == null) {
            return;
        }
        Drawable mutate = drawable.mutate();
        if (mutate instanceof InsetDrawable) {
            e(((InsetDrawable) mutate).getDrawable(), legacyColors, themeColors);
            return;
        }
        int i10 = 0;
        if (mutate instanceof RippleDrawable) {
            RippleDrawable rippleDrawable = (RippleDrawable) mutate;
            ColorStateList l10 = l(rippleDrawable, "getColor");
            if (l10 != null && (k12 = k(l10.getDefaultColor(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
                rippleDrawable.setColor(ColorStateList.valueOf(k12));
            }
            while (i10 < rippleDrawable.getNumberOfLayers()) {
                e(rippleDrawable.getDrawable(i10), legacyColors, themeColors);
                i10++;
            }
            return;
        }
        if (mutate instanceof ColorDrawable) {
            ColorDrawable colorDrawable = (ColorDrawable) mutate;
            int k13 = k(colorDrawable.getColor(), legacyColors, themeColors);
            if (k13 != Integer.MIN_VALUE) {
                colorDrawable.setColor(k13);
                return;
            }
            return;
        }
        if (!(mutate instanceof GradientDrawable)) {
            if (mutate instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) mutate;
                while (i10 < layerDrawable.getNumberOfLayers()) {
                    e(layerDrawable.getDrawable(i10), legacyColors, themeColors);
                    i10++;
                }
                return;
            }
            return;
        }
        GradientDrawable gradientDrawable = (GradientDrawable) mutate;
        int[] colors = gradientDrawable.getColors();
        if (colors == null || colors.length <= 0) {
            ColorStateList color = gradientDrawable.getColor();
            if (color != null && (k10 = k(color.getDefaultColor(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
                gradientDrawable.setColor(k10);
            }
        } else {
            int[] iArr = (int[]) colors.clone();
            boolean z10 = false;
            for (int i11 = 0; i11 < colors.length; i11++) {
                int k14 = k(colors[i11], legacyColors, themeColors);
                if (k14 != Integer.MIN_VALUE) {
                    iArr[i11] = k14;
                    z10 = true;
                }
            }
            if (z10) {
                gradientDrawable.setColors(iArr);
            }
        }
        ColorStateList l11 = l(gradientDrawable, "getStrokeColor");
        if (l11 == null || (k11 = k(l11.getDefaultColor(), legacyColors, themeColors)) == Integer.MIN_VALUE) {
            return;
        }
        gradientDrawable.setStroke(j(m(gradientDrawable, "getStrokeWidth"), 0).intValue(), k11);
    }

    public static void f(View view, int[] legacyColors, int[] themeColors) {
        TabLayout tabLayout;
        Integer m10;
        int k10;
        E1.a aVar;
        ColorStateList cardBackgroundColor;
        int k11;
        CardView cardView;
        ColorStateList cardBackgroundColor2;
        int k12;
        int k13;
        int k14;
        int k15;
        int k16;
        CompoundButton compoundButton;
        ColorStateList buttonTintList;
        int k17;
        int k18;
        int k19;
        int k20;
        int k21;
        int k22;
        int k23;
        int k24;
        int k25;
        int k26;
        int k27;
        Drawable background = view.getBackground();
        if (background != null) {
            e(background, legacyColors, themeColors);
        }
        ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(view);
        if (backgroundTintList != null && (k27 = k(backgroundTintList.getDefaultColor(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
            ViewCompat.setBackgroundTintList(view, ColorStateList.valueOf(k27));
        }
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            Drawable drawable = imageView.getDrawable();
            if ((drawable instanceof ColorDrawable) && (k26 = k(((ColorDrawable) drawable).getColor(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
                imageView.setImageDrawable(new ColorDrawable(k26));
            }
            ColorStateList imageTintList = imageView.getImageTintList();
            if (imageTintList != null && (k25 = k(imageTintList.getDefaultColor(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
                imageView.setImageTintList(ColorStateList.valueOf(k25));
            }
        }
        if (view instanceof RoundedImageView) {
            RoundedImageView roundedImageView = (RoundedImageView) view;
            try {
                int k28 = k(roundedImageView.getBorderColor(), legacyColors, themeColors);
                if (k28 != Integer.MIN_VALUE) {
                    roundedImageView.setBorderColor(k28);
                }
            } catch (Exception unused) {
            }
        }
        if (view instanceof RangeSeekBarView) {
            RangeSeekBarView rangeSeekBarView = (RangeSeekBarView) view;
            int k29 = k(rangeSeekBarView.getBaseColor(), legacyColors, themeColors);
            if (k29 != Integer.MIN_VALUE) {
                rangeSeekBarView.setBaseColor(k29);
            }
            int k30 = k(rangeSeekBarView.getFillColor(), legacyColors, themeColors);
            if (k30 != Integer.MIN_VALUE) {
                rangeSeekBarView.setFillColor(k30);
            }
        }
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            int k31 = k(textView.getCurrentTextColor(), legacyColors, themeColors);
            if (k31 != Integer.MIN_VALUE) {
                textView.setTextColor(k31);
            }
            ColorStateList hintTextColors = textView.getHintTextColors();
            if (hintTextColors != null && (k24 = k(hintTextColors.getDefaultColor(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
                textView.setHintTextColor(k24);
            }
        }
        if (view instanceof ProgressBar) {
            ProgressBar progressBar = (ProgressBar) view;
            ColorStateList indeterminateTintList = progressBar.getIndeterminateTintList();
            if (indeterminateTintList != null && (k23 = k(indeterminateTintList.getDefaultColor(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
                progressBar.setIndeterminateTintList(ColorStateList.valueOf(k23));
            }
            ColorStateList progressTintList = progressBar.getProgressTintList();
            if (progressTintList != null && (k22 = k(progressTintList.getDefaultColor(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
                progressBar.setProgressTintList(ColorStateList.valueOf(k22));
            }
            ColorStateList secondaryProgressTintList = progressBar.getSecondaryProgressTintList();
            if (secondaryProgressTintList != null && (k21 = k(secondaryProgressTintList.getDefaultColor(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
                progressBar.setSecondaryProgressTintList(ColorStateList.valueOf(k21));
            }
            ColorStateList progressBackgroundTintList = progressBar.getProgressBackgroundTintList();
            if (progressBackgroundTintList != null && (k20 = k(progressBackgroundTintList.getDefaultColor(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
                progressBar.setProgressBackgroundTintList(ColorStateList.valueOf(k20));
            }
        }
        if (view instanceof SeekBar) {
            SeekBar seekBar = (SeekBar) view;
            ColorStateList thumbTintList = seekBar.getThumbTintList();
            if (thumbTintList != null && (k19 = k(thumbTintList.getDefaultColor(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
                seekBar.setThumbTintList(ColorStateList.valueOf(k19));
            }
            ColorStateList tickMarkTintList = seekBar.getTickMarkTintList();
            if (tickMarkTintList != null && (k18 = k(tickMarkTintList.getDefaultColor(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
                seekBar.setTickMarkTintList(ColorStateList.valueOf(k18));
            }
        }
        if ((view instanceof CompoundButton) && (buttonTintList = CompoundButtonCompat.getButtonTintList((compoundButton = (CompoundButton) view))) != null && (k17 = k(buttonTintList.getDefaultColor(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
            CompoundButtonCompat.setButtonTintList(compoundButton, ColorStateList.valueOf(k17));
        }
        if (view instanceof SwitchCompat) {
            SwitchCompat switchCompat = (SwitchCompat) view;
            ColorStateList thumbTintList2 = switchCompat.getThumbTintList();
            if (thumbTintList2 != null && (k16 = k(thumbTintList2.getDefaultColor(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
                switchCompat.setThumbTintList(ColorStateList.valueOf(k16));
            }
            ColorStateList trackTintList = switchCompat.getTrackTintList();
            if (trackTintList != null && (k15 = k(trackTintList.getDefaultColor(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
                switchCompat.setTrackTintList(ColorStateList.valueOf(k15));
            }
        }
        if (view instanceof Switch) {
            Switch r02 = (Switch) view;
            ColorStateList thumbTintList3 = r02.getThumbTintList();
            if (thumbTintList3 != null && (k14 = k(thumbTintList3.getDefaultColor(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
                r02.setThumbTintList(ColorStateList.valueOf(k14));
            }
            ColorStateList trackTintList2 = r02.getTrackTintList();
            if (trackTintList2 != null && (k13 = k(trackTintList2.getDefaultColor(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
                r02.setTrackTintList(ColorStateList.valueOf(k13));
            }
        }
        if ((view instanceof CardView) && (cardBackgroundColor2 = (cardView = (CardView) view).getCardBackgroundColor()) != null && (k12 = k(cardBackgroundColor2.getDefaultColor(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
            cardView.setCardBackgroundColor(k12);
        }
        if ((view instanceof E1.a) && (cardBackgroundColor = (aVar = (E1.a) view).getCardBackgroundColor()) != null && (k11 = k(cardBackgroundColor.getDefaultColor(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
            aVar.setCardBackgroundColor(k11);
        }
        if ((view instanceof TabLayout) && (m10 = m((tabLayout = (TabLayout) view), "getSelectedTabIndicatorColor")) != null && (k10 = k(m10.intValue(), legacyColors, themeColors)) != Integer.MIN_VALUE) {
            o(tabLayout, "setSelectedTabIndicatorColor", k10);
        }
        a(view, legacyColors, themeColors);
    }

    public static void g(View view) {
        if (view == null) {
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(Nc.b.k0(4.0f));
        gradientDrawable.setColor(Theme.i(Theme.T.GENERIC_BUTTON));
        gradientDrawable.setStroke(Nc.b.k0(2.0f), Theme.i(Theme.T.GENERIC_BUTTON_OUTLINE));
        view.setBackground(gradientDrawable);
    }

    public static void h(View view, boolean selected) {
        if (view == null) {
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(Nc.b.k0(12.0f));
        b bVar = Theme.T.PANEL_TOPBAR;
        int i10 = Theme.i(bVar);
        gradientDrawable.setColor(selected ? Theme.i(bVar) : Theme.i(Theme.T.CARD));
        gradientDrawable.setStroke(Nc.b.k0(2.0f), i10);
        view.setBackground(gradientDrawable);
    }

    public static void i(View root, Context context, int[] extraLegacyColors, b[] extraTags) {
        if (root == null || context == null) {
            return;
        }
        int[] iArr = {context.getResources().getColor(R.color.theme_panel), context.getResources().getColor(R.color.theme_card), context.getResources().getColor(R.color.theme_panel_topbar), context.getResources().getColor(R.color.theme_background), context.getResources().getColor(R.color.theme_semi_card), context.getResources().getColor(R.color.theme_tree_list_row_1), context.getResources().getColor(R.color.theme_tree_list_row_2), context.getResources().getColor(R.color.theme_high_text_color), context.getResources().getColor(R.color.theme_mid_text_color), context.getResources().getColor(R.color.theme_drop_location), context.getResources().getColor(R.color.theme_primary), context.getResources().getColor(R.color.theme_primary_dark), context.getResources().getColor(R.color.theme_accent), context.getResources().getColor(R.color.theme_accent_green), context.getResources().getColor(R.color.theme_accent_green_dark), context.getResources().getColor(R.color.theme_checkbox_background), context.getResources().getColor(R.color.theme_checkbox_outline), context.getResources().getColor(R.color.theme_checkbox_checkmark), context.getResources().getColor(R.color.theme_panels_spacing), context.getResources().getColor(R.color.theme_terminal_background), context.getResources().getColor(R.color.theme_terminal_text_color), context.getResources().getColor(R.color.theme_input_background), context.getResources().getColor(R.color.theme_input_outline), context.getResources().getColor(R.color.theme_high_icon_tint), context.getResources().getColor(R.color.theme_mid_icon_tint), context.getResources().getColor(R.color.theme_selected_elements), context.getResources().getColor(R.color.theme_popup_menu_separator), context.getResources().getColor(R.color.generic_button), context.getResources().getColor(R.color.generic_button_outline), context.getResources().getColor(R.color.theme_error), context.getResources().getColor(R.color.theme_ui_editor_buttons_color), context.getResources().getColor(R.color.theme_ui_editor_pressed_buttons_color), context.getResources().getColor(R.color.theme_ui_editor_buttons_text_color), context.getResources().getColor(R.color.theme_ui_editor_buttons_outline_color), context.getResources().getColor(R.color.theme_ui_editor_pressed_buttons_outline_color), context.getResources().getColor(R.color.theme_ui_editor_background_color), context.getResources().getColor(R.color.theme_ui_editor_grid_color), context.getResources().getColor(R.color.theme_ui_editor_grid_background)};
        b[] bVarArr = {Theme.T.PANEL, Theme.T.CARD, Theme.T.PANEL_TOPBAR, Theme.T.BACKGROUND, Theme.T.SEMI_CARD, Theme.T.TREE_LIST_ROW1, Theme.T.TREE_LIST_ROW2, Theme.T.HIGH_TEXT_COLOR, Theme.T.MID_TEXT_COLOR, Theme.T.DROP_LOCATION, Theme.T.PRIMARY, Theme.T.PRIMARY_DARK, Theme.T.ACCENT, Theme.T.ACCENT_GREEN, Theme.T.ACCENT_GREEN_DARK, Theme.T.CHECKBOX_BACKGROUND, Theme.T.CHECKBOX_OUTLINE, Theme.T.CHECKBOX_CHECKMARK, Theme.T.PANELS_SPACING, Theme.T.TERMINAL_BACKGROUND, Theme.T.TERMINAL_TEXT_COLOR, Theme.T.INPUT_BACKGROUND, Theme.T.INPUT_OUTLINE, Theme.T.HIGH_ICON_TINT, Theme.T.MID_ICON_TINT, Theme.T.SELECTED_ELEMENTS, Theme.T.POPUP_MENU_SEPARATOR, Theme.T.GENERIC_BUTTON, Theme.T.GENERIC_BUTTON_OUTLINE, Theme.T.ERROR, Theme.T.UI_EDITOR_BUTTONS_COLOR, Theme.T.UI_EDITOR_PRESSED_BUTTONS_COLOR, Theme.T.UI_EDITOR_BUTTONS_TEXT_COLOR, Theme.T.UI_EDITOR_BUTTONS_OUTLINE_COLOR, Theme.T.UI_EDITOR_PRESSED_BUTTONS_OUTLINE_COLOR, Theme.T.UI_EDITOR_BACKGROUND_COLOR, Theme.T.UI_EDITOR_GRID_COLOR, Theme.T.UI_EDITOR_GRID_BACKGROUND};
        if (extraLegacyColors != null && extraTags != null && extraLegacyColors.length == extraTags.length && extraLegacyColors.length > 0) {
            int[] iArr2 = new int[extraLegacyColors.length + 38];
            b[] bVarArr2 = new b[extraTags.length + 38];
            System.arraycopy(iArr, 0, iArr2, 0, 38);
            System.arraycopy(extraLegacyColors, 0, iArr2, 38, extraLegacyColors.length);
            System.arraycopy(bVarArr, 0, bVarArr2, 0, 38);
            System.arraycopy(extraTags, 0, bVarArr2, 38, extraTags.length);
            iArr = iArr2;
            bVarArr = bVarArr2;
        }
        int length = bVarArr.length;
        int[] iArr3 = new int[length];
        for (int i10 = 0; i10 < bVarArr.length; i10++) {
            iArr3[i10] = Theme.i(bVarArr[i10]);
        }
        int[] w10 = Theme.w(bVarArr);
        if (w10 != null && w10.length == length) {
            int[] iArr4 = new int[iArr.length + w10.length];
            int[] iArr5 = new int[w10.length + length];
            System.arraycopy(iArr, 0, iArr4, 0, iArr.length);
            System.arraycopy(iArr3, 0, iArr5, 0, length);
            System.arraycopy(w10, 0, iArr4, iArr.length, w10.length);
            System.arraycopy(iArr3, 0, iArr5, length, length);
            iArr = iArr4;
            iArr3 = iArr5;
        }
        d(root, iArr, iArr3);
    }

    public static Integer j(Integer... values) {
        if (values == null) {
            return null;
        }
        for (Integer num : values) {
            if (num != null) {
                return num;
            }
        }
        return null;
    }

    public static int k(int color, int[] legacyColors, int[] themeColors) {
        if (legacyColors != null && themeColors != null) {
            int min = Math.min(legacyColors.length, themeColors.length);
            for (int i10 = 0; i10 < min; i10++) {
                if (color == legacyColors[i10]) {
                    return themeColors[i10];
                }
            }
        }
        return Integer.MIN_VALUE;
    }

    public static ColorStateList l(Object target, String methodName) {
        if (target == null) {
            return null;
        }
        try {
            Object invoke = target.getClass().getMethod(methodName, null).invoke(target, null);
            if (invoke instanceof ColorStateList) {
                return (ColorStateList) invoke;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static Integer m(Object target, String methodName) {
        Object invoke;
        if (target == null) {
            return null;
        }
        try {
            invoke = target.getClass().getMethod(methodName, null).invoke(target, null);
        } catch (Exception unused) {
        }
        if (invoke instanceof Integer) {
            return (Integer) invoke;
        }
        if (invoke instanceof ColorStateList) {
            return Integer.valueOf(((ColorStateList) invoke).getDefaultColor());
        }
        return null;
    }

    public static int[] n(Object target, String methodName) {
        if (target == null) {
            return null;
        }
        try {
            Object invoke = target.getClass().getMethod(methodName, null).invoke(target, null);
            if (invoke instanceof int[]) {
                return (int[]) invoke;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static boolean o(Object target, String methodName, int value) {
        if (target == null) {
            return false;
        }
        try {
            target.getClass().getMethod(methodName, Integer.TYPE).invoke(target, Integer.valueOf(value));
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean p(Object target, String methodName, int[] value) {
        if (target == null) {
            return false;
        }
        try {
            target.getClass().getMethod(methodName, int[].class).invoke(target, value);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
