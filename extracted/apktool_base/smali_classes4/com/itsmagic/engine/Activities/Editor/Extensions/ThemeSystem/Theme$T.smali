.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LIc/q;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T"
.end annotation


# static fields
.field public static final ACCENT:LAc/b;

.field public static final ACCENT_GREEN:LAc/b;

.field public static final ACCENT_GREEN_DARK:LAc/b;

.field public static final ATL_BACKGROUND:LAc/b;

.field public static final ATL_KEY:LAc/b;

.field public static final ATL_SELECTED_KEYFRAME:LAc/b;

.field public static final ATL_UNSELECTED_KEYFRAME:LAc/b;

.field public static final BACKGROUND:LAc/b;

.field public static final BUTTON_OUTLINE:LAc/b;

.field public static final CARD:LAc/b;

.field public static final CHECKBOX_BACKGROUND:LAc/b;

.field public static final CHECKBOX_CHECKMARK:LAc/b;

.field public static final CHECKBOX_OUTLINE:LAc/b;

.field public static final DROP_LOCATION:LAc/b;

.field public static final ERROR:LAc/b;

.field public static final GENERIC_BUTTON:LAc/b;

.field public static final GENERIC_BUTTON_OUTLINE:LAc/b;

.field public static final HIGH_ICON_TINT:LAc/b;

.field public static final HIGH_TEXT_COLOR:LAc/b;

.field public static final INPUT_BACKGROUND:LAc/b;

.field public static final INPUT_OUTLINE:LAc/b;

.field public static final MID_ICON_TINT:LAc/b;

.field public static final MID_TEXT_COLOR:LAc/b;

.field public static final NODEGRAPH_BRANCH_COLOR:LAc/b;

.field public static final NODEGRAPH_BREAK_TOPBAR:LAc/b;

.field public static final NODEGRAPH_CUBEMAP_COLOR:LAc/b;

.field public static final NODEGRAPH_DYNAMIC_COLOR:LAc/b;

.field public static final NODEGRAPH_EVENT_TOPBAR:LAc/b;

.field public static final NODEGRAPH_GRID:LAc/b;

.field public static final NODEGRAPH_LIST_COLOR:LAc/b;

.field public static final NODEGRAPH_NUMBER_COLOR:LAc/b;

.field public static final NODEGRAPH_SELECTED_BORDER:LAc/b;

.field public static final NODEGRAPH_SEMAPHORE_TOPBAR:LAc/b;

.field public static final NODEGRAPH_STRING_COLOR:LAc/b;

.field public static final NODEGRAPH_TEXTURE_COLOR:LAc/b;

.field public static final NODEGRAPH_TYPE_COLOR:LAc/b;

.field public static final NODEGRAPH_VECTOR_COLOR:LAc/b;

.field public static final PANEL:LAc/b;

.field public static final PANELS_SPACING:LAc/b;

.field public static final PANEL_TOPBAR:LAc/b;

.field public static final POPUP_MENU_SEPARATOR:LAc/b;

.field public static final PRIMARY:LAc/b;

.field public static final PRIMARY_DARK:LAc/b;

.field public static final SELECTED_ELEMENTS:LAc/b;

.field public static final SEMI_CARD:LAc/b;

.field public static final TERMINAL_BACKGROUND:LAc/b;

.field public static final TERMINAL_TEXT_COLOR:LAc/b;

.field public static final TREE_LIST_ROW1:LAc/b;

.field public static final TREE_LIST_ROW2:LAc/b;

.field public static final UI_EDITOR_BACKGROUND_COLOR:LAc/b;

.field public static final UI_EDITOR_BUTTONS_COLOR:LAc/b;

.field public static final UI_EDITOR_BUTTONS_OUTLINE_COLOR:LAc/b;

.field public static final UI_EDITOR_BUTTONS_TEXT_COLOR:LAc/b;

.field public static final UI_EDITOR_GRID_BACKGROUND:LAc/b;

.field public static final UI_EDITOR_GRID_COLOR:LAc/b;

.field public static final UI_EDITOR_PRESSED_BUTTONS_COLOR:LAc/b;

.field public static final UI_EDITOR_PRESSED_BUTTONS_OUTLINE_COLOR:LAc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "drop_location"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->DROP_LOCATION:LAc/b;

    const-string v0, "panel"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    const-string v0, "semi_card"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->SEMI_CARD:LAc/b;

    const-string v0, "card"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CARD:LAc/b;

    const-string v0, "panel_topbar"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    const-string v0, "background"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BACKGROUND:LAc/b;

    const-string v0, "primary"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    const-string v0, "primary_dark"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    const-string v0, "accent"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT:LAc/b;

    const-string v0, "accent_green"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT_GREEN:LAc/b;

    const-string v0, "accent_green_dark"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT_GREEN_DARK:LAc/b;

    const-string v0, "tree_list_row1"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TREE_LIST_ROW1:LAc/b;

    const-string v0, "tree_list_row2"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TREE_LIST_ROW2:LAc/b;

    const-string v0, "high_text_color"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    const-string v0, "mid_text_color"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_TEXT_COLOR:LAc/b;

    const-string v0, "checkbox_background"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CHECKBOX_BACKGROUND:LAc/b;

    const-string v0, "checkbox_outline"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CHECKBOX_OUTLINE:LAc/b;

    const-string v0, "checkbox_checkmark"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CHECKBOX_CHECKMARK:LAc/b;

    const-string v0, "panels_spacing"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANELS_SPACING:LAc/b;

    const-string v0, "terminal_background"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TERMINAL_BACKGROUND:LAc/b;

    const-string v0, "terminal_text_color"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TERMINAL_TEXT_COLOR:LAc/b;

    const-string v0, "input_background"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->INPUT_BACKGROUND:LAc/b;

    const-string v0, "input_outline"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->INPUT_OUTLINE:LAc/b;

    const-string v0, "high_icon_tint"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    const-string v0, "mid_icon_tint"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_ICON_TINT:LAc/b;

    const-string v0, "selected_elements"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->SELECTED_ELEMENTS:LAc/b;

    const-string v0, "popup_menu_separator"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->POPUP_MENU_SEPARATOR:LAc/b;

    const-string v0, "button_outline"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    const-string v0, "generic_button"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->GENERIC_BUTTON:LAc/b;

    const-string v0, "generic_button_outline"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->GENERIC_BUTTON_OUTLINE:LAc/b;

    const-string v0, "error"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ERROR:LAc/b;

    const-string v0, "ui_editor_buttons_color"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_BUTTONS_COLOR:LAc/b;

    const-string v0, "ui_editor_pressed_buttons_color"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_PRESSED_BUTTONS_COLOR:LAc/b;

    const-string v0, "ui_editor_buttons_text_color"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_BUTTONS_TEXT_COLOR:LAc/b;

    const-string v0, "ui_editor_buttons_outline_color"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_BUTTONS_OUTLINE_COLOR:LAc/b;

    const-string v0, "ui_editor_pressed_buttons_outline_color"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_PRESSED_BUTTONS_OUTLINE_COLOR:LAc/b;

    const-string v0, "ui_editor_background_color"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_BACKGROUND_COLOR:LAc/b;

    const-string v0, "ui_editor_grid_color"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_GRID_COLOR:LAc/b;

    const-string v0, "ui_editor_grid_background"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_GRID_BACKGROUND:LAc/b;

    const-string v0, "nodegraph_number_color"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_NUMBER_COLOR:LAc/b;

    const-string v0, "nodegraph_string_color"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_STRING_COLOR:LAc/b;

    const-string v0, "nodegraph_type_color"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_TYPE_COLOR:LAc/b;

    const-string v0, "nodegraph_vector_color"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_VECTOR_COLOR:LAc/b;

    const-string v0, "nodegraph_list_color"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_LIST_COLOR:LAc/b;

    const-string v0, "nodegraph_dynamic_color"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_DYNAMIC_COLOR:LAc/b;

    const-string v0, "nodegraph_texture_color"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_TEXTURE_COLOR:LAc/b;

    const-string v0, "nodegraph_cubemap_color"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_CUBEMAP_COLOR:LAc/b;

    const-string v0, "nodegraph_branch_color"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_BRANCH_COLOR:LAc/b;

    const-string v0, "nodegraph_selected_border"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_SELECTED_BORDER:LAc/b;

    const-string v0, "nodegraph_grid"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_GRID:LAc/b;

    const-string v0, "nodegraph_event_topbar"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_EVENT_TOPBAR:LAc/b;

    const-string v0, "nodegraph_semaphore_topbar"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_SEMAPHORE_TOPBAR:LAc/b;

    const-string v0, "nodegraph_break_topbar"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_BREAK_TOPBAR:LAc/b;

    const-string v0, "atl_unselected_keyframe"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ATL_UNSELECTED_KEYFRAME:LAc/b;

    const-string v0, "atl_selected_keyframe"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ATL_SELECTED_KEYFRAME:LAc/b;

    const-string v0, "atl_key"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ATL_KEY:LAc/b;

    const-string v0, "atl_background"

    invoke-static {v0}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ATL_BACKGROUND:LAc/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
