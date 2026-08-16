package org.blacksquircle.ui.language.base.model;

import F6.c;
import androidx.annotation.ColorInt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@c
public final class ColorScheme {
    private final int attrNameColor;
    private final int attrValueColor;
    private final int backgroundColor;
    private final int commentColor;
    private final int delimiterBackgroundColor;
    private final int entityRefColor;
    private final int findResultBackgroundColor;
    private final int gutterColor;
    private final int gutterCurrentLineNumberColor;
    private final int gutterDividerColor;
    private final int gutterLineAlert;
    private final int gutterLineError;
    private final int gutterTextColor;
    private final int keywordColor;
    private final int langConstColor;
    private final int methodColor;
    private final int numberColor;
    private final int operatorColor;
    private final int preprocessorColor;
    private final int selectedLineColor;
    private final int selectionColor;
    private final int stringColor;
    private final int suggestionQueryColor;
    private final int tagColor;
    private final int tagNameColor;
    private final int textColor;
    private final int typeColor;
    private final int variableColor;

    public ColorScheme(@ColorInt int i10, @ColorInt int i11, @ColorInt int i12, @ColorInt int i13, @ColorInt int i14, @ColorInt int i15, @ColorInt int i16, @ColorInt int i17, @ColorInt int i18, @ColorInt int i19, @ColorInt int i20, @ColorInt int i21, @ColorInt int i22, @ColorInt int i23, @ColorInt int i24, @ColorInt int i25, @ColorInt int i26, @ColorInt int i27, @ColorInt int i28, @ColorInt int i29, @ColorInt int i30, @ColorInt int i31, @ColorInt int i32, @ColorInt int i33, @ColorInt int i34, @ColorInt int i35, @ColorInt int i36, @ColorInt int i37) {
        this.textColor = i10;
        this.backgroundColor = i11;
        this.gutterColor = i12;
        this.gutterDividerColor = i13;
        this.gutterCurrentLineNumberColor = i14;
        this.gutterTextColor = i15;
        this.selectedLineColor = i16;
        this.selectionColor = i17;
        this.suggestionQueryColor = i18;
        this.findResultBackgroundColor = i19;
        this.delimiterBackgroundColor = i20;
        this.numberColor = i21;
        this.operatorColor = i22;
        this.keywordColor = i23;
        this.typeColor = i24;
        this.langConstColor = i25;
        this.preprocessorColor = i26;
        this.variableColor = i27;
        this.methodColor = i28;
        this.stringColor = i29;
        this.commentColor = i30;
        this.tagColor = i31;
        this.tagNameColor = i32;
        this.attrNameColor = i33;
        this.attrValueColor = i34;
        this.entityRefColor = i35;
        this.gutterLineError = i36;
        this.gutterLineAlert = i37;
    }

    public final int component1() {
        return this.textColor;
    }

    public final int component10() {
        return this.findResultBackgroundColor;
    }

    public final int component11() {
        return this.delimiterBackgroundColor;
    }

    public final int component12() {
        return this.numberColor;
    }

    public final int component13() {
        return this.operatorColor;
    }

    public final int component14() {
        return this.keywordColor;
    }

    public final int component15() {
        return this.typeColor;
    }

    public final int component16() {
        return this.langConstColor;
    }

    public final int component17() {
        return this.preprocessorColor;
    }

    public final int component18() {
        return this.variableColor;
    }

    public final int component19() {
        return this.methodColor;
    }

    public final int component2() {
        return this.backgroundColor;
    }

    public final int component20() {
        return this.stringColor;
    }

    public final int component21() {
        return this.commentColor;
    }

    public final int component22() {
        return this.tagColor;
    }

    public final int component23() {
        return this.tagNameColor;
    }

    public final int component24() {
        return this.attrNameColor;
    }

    public final int component25() {
        return this.attrValueColor;
    }

    public final int component26() {
        return this.entityRefColor;
    }

    public final int component27() {
        return this.gutterLineError;
    }

    public final int component28() {
        return this.gutterLineAlert;
    }

    public final int component3() {
        return this.gutterColor;
    }

    public final int component4() {
        return this.gutterDividerColor;
    }

    public final int component5() {
        return this.gutterCurrentLineNumberColor;
    }

    public final int component6() {
        return this.gutterTextColor;
    }

    public final int component7() {
        return this.selectedLineColor;
    }

    public final int component8() {
        return this.selectionColor;
    }

    public final int component9() {
        return this.suggestionQueryColor;
    }

    @NotNull
    public final ColorScheme copy(@ColorInt int i10, @ColorInt int i11, @ColorInt int i12, @ColorInt int i13, @ColorInt int i14, @ColorInt int i15, @ColorInt int i16, @ColorInt int i17, @ColorInt int i18, @ColorInt int i19, @ColorInt int i20, @ColorInt int i21, @ColorInt int i22, @ColorInt int i23, @ColorInt int i24, @ColorInt int i25, @ColorInt int i26, @ColorInt int i27, @ColorInt int i28, @ColorInt int i29, @ColorInt int i30, @ColorInt int i31, @ColorInt int i32, @ColorInt int i33, @ColorInt int i34, @ColorInt int i35, @ColorInt int i36, @ColorInt int i37) {
        return new ColorScheme(i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27, i28, i29, i30, i31, i32, i33, i34, i35, i36, i37);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ColorScheme)) {
            return false;
        }
        ColorScheme colorScheme = (ColorScheme) obj;
        return this.textColor == colorScheme.textColor && this.backgroundColor == colorScheme.backgroundColor && this.gutterColor == colorScheme.gutterColor && this.gutterDividerColor == colorScheme.gutterDividerColor && this.gutterCurrentLineNumberColor == colorScheme.gutterCurrentLineNumberColor && this.gutterTextColor == colorScheme.gutterTextColor && this.selectedLineColor == colorScheme.selectedLineColor && this.selectionColor == colorScheme.selectionColor && this.suggestionQueryColor == colorScheme.suggestionQueryColor && this.findResultBackgroundColor == colorScheme.findResultBackgroundColor && this.delimiterBackgroundColor == colorScheme.delimiterBackgroundColor && this.numberColor == colorScheme.numberColor && this.operatorColor == colorScheme.operatorColor && this.keywordColor == colorScheme.keywordColor && this.typeColor == colorScheme.typeColor && this.langConstColor == colorScheme.langConstColor && this.preprocessorColor == colorScheme.preprocessorColor && this.variableColor == colorScheme.variableColor && this.methodColor == colorScheme.methodColor && this.stringColor == colorScheme.stringColor && this.commentColor == colorScheme.commentColor && this.tagColor == colorScheme.tagColor && this.tagNameColor == colorScheme.tagNameColor && this.attrNameColor == colorScheme.attrNameColor && this.attrValueColor == colorScheme.attrValueColor && this.entityRefColor == colorScheme.entityRefColor && this.gutterLineError == colorScheme.gutterLineError && this.gutterLineAlert == colorScheme.gutterLineAlert;
    }

    public final int getAttrNameColor() {
        return this.attrNameColor;
    }

    public final int getAttrValueColor() {
        return this.attrValueColor;
    }

    public final int getBackgroundColor() {
        return this.backgroundColor;
    }

    public final int getCommentColor() {
        return this.commentColor;
    }

    public final int getDelimiterBackgroundColor() {
        return this.delimiterBackgroundColor;
    }

    public final int getEntityRefColor() {
        return this.entityRefColor;
    }

    public final int getFindResultBackgroundColor() {
        return this.findResultBackgroundColor;
    }

    public final int getGutterColor() {
        return this.gutterColor;
    }

    public final int getGutterCurrentLineNumberColor() {
        return this.gutterCurrentLineNumberColor;
    }

    public final int getGutterDividerColor() {
        return this.gutterDividerColor;
    }

    public final int getGutterLineAlert() {
        return this.gutterLineAlert;
    }

    public final int getGutterLineError() {
        return this.gutterLineError;
    }

    public final int getGutterTextColor() {
        return this.gutterTextColor;
    }

    public final int getKeywordColor() {
        return this.keywordColor;
    }

    public final int getLangConstColor() {
        return this.langConstColor;
    }

    public final int getMethodColor() {
        return this.methodColor;
    }

    public final int getNumberColor() {
        return this.numberColor;
    }

    public final int getOperatorColor() {
        return this.operatorColor;
    }

    public final int getPreprocessorColor() {
        return this.preprocessorColor;
    }

    public final int getSelectedLineColor() {
        return this.selectedLineColor;
    }

    public final int getSelectionColor() {
        return this.selectionColor;
    }

    public final int getStringColor() {
        return this.stringColor;
    }

    public final int getSuggestionQueryColor() {
        return this.suggestionQueryColor;
    }

    public final int getTagColor() {
        return this.tagColor;
    }

    public final int getTagNameColor() {
        return this.tagNameColor;
    }

    public final int getTextColor() {
        return this.textColor;
    }

    public final int getTypeColor() {
        return this.typeColor;
    }

    public final int getVariableColor() {
        return this.variableColor;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((((((((((((((((((((Integer.hashCode(this.textColor) * 31) + Integer.hashCode(this.backgroundColor)) * 31) + Integer.hashCode(this.gutterColor)) * 31) + Integer.hashCode(this.gutterDividerColor)) * 31) + Integer.hashCode(this.gutterCurrentLineNumberColor)) * 31) + Integer.hashCode(this.gutterTextColor)) * 31) + Integer.hashCode(this.selectedLineColor)) * 31) + Integer.hashCode(this.selectionColor)) * 31) + Integer.hashCode(this.suggestionQueryColor)) * 31) + Integer.hashCode(this.findResultBackgroundColor)) * 31) + Integer.hashCode(this.delimiterBackgroundColor)) * 31) + Integer.hashCode(this.numberColor)) * 31) + Integer.hashCode(this.operatorColor)) * 31) + Integer.hashCode(this.keywordColor)) * 31) + Integer.hashCode(this.typeColor)) * 31) + Integer.hashCode(this.langConstColor)) * 31) + Integer.hashCode(this.preprocessorColor)) * 31) + Integer.hashCode(this.variableColor)) * 31) + Integer.hashCode(this.methodColor)) * 31) + Integer.hashCode(this.stringColor)) * 31) + Integer.hashCode(this.commentColor)) * 31) + Integer.hashCode(this.tagColor)) * 31) + Integer.hashCode(this.tagNameColor)) * 31) + Integer.hashCode(this.attrNameColor)) * 31) + Integer.hashCode(this.attrValueColor)) * 31) + Integer.hashCode(this.entityRefColor)) * 31) + Integer.hashCode(this.gutterLineError)) * 31) + Integer.hashCode(this.gutterLineAlert);
    }

    @NotNull
    public String toString() {
        return "ColorScheme(textColor=" + this.textColor + ", backgroundColor=" + this.backgroundColor + ", gutterColor=" + this.gutterColor + ", gutterDividerColor=" + this.gutterDividerColor + ", gutterCurrentLineNumberColor=" + this.gutterCurrentLineNumberColor + ", gutterTextColor=" + this.gutterTextColor + ", selectedLineColor=" + this.selectedLineColor + ", selectionColor=" + this.selectionColor + ", suggestionQueryColor=" + this.suggestionQueryColor + ", findResultBackgroundColor=" + this.findResultBackgroundColor + ", delimiterBackgroundColor=" + this.delimiterBackgroundColor + ", numberColor=" + this.numberColor + ", operatorColor=" + this.operatorColor + ", keywordColor=" + this.keywordColor + ", typeColor=" + this.typeColor + ", langConstColor=" + this.langConstColor + ", preprocessorColor=" + this.preprocessorColor + ", variableColor=" + this.variableColor + ", methodColor=" + this.methodColor + ", stringColor=" + this.stringColor + ", commentColor=" + this.commentColor + ", tagColor=" + this.tagColor + ", tagNameColor=" + this.tagNameColor + ", attrNameColor=" + this.attrNameColor + ", attrValueColor=" + this.attrValueColor + ", entityRefColor=" + this.entityRefColor + ", gutterLineError=" + this.gutterLineError + ", gutterLineAlert=" + this.gutterLineAlert + ')';
    }
}
