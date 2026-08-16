.class public LJAVARuntime/TextScriptingTheme;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient attrNameColor:LJAVARuntime/Color;

.field public transient attrValueColor:LJAVARuntime/Color;

.field public transient backgroundColor:LJAVARuntime/Color;

.field public transient commentColor:LJAVARuntime/Color;

.field public transient delimiterBackgroundColor:LJAVARuntime/Color;

.field public transient entityRefColor:LJAVARuntime/Color;

.field public transient findResultBackgroundColor:LJAVARuntime/Color;

.field public transient gutterColor:LJAVARuntime/Color;

.field public transient gutterCurrentLineNumberColor:LJAVARuntime/Color;

.field public transient gutterDividerColor:LJAVARuntime/Color;

.field public transient gutterLineAlert:LJAVARuntime/Color;

.field public transient gutterLineError:LJAVARuntime/Color;

.field public transient gutterTextColor:LJAVARuntime/Color;

.field public transient keywordColor:LJAVARuntime/Color;

.field public transient langConstColor:LJAVARuntime/Color;

.field public transient methodColor:LJAVARuntime/Color;

.field public transient numberColor:LJAVARuntime/Color;

.field public transient operatorColor:LJAVARuntime/Color;

.field public transient preprocessorColor:LJAVARuntime/Color;

.field public transient selectedLineColor:LJAVARuntime/Color;

.field public transient selectionColor:LJAVARuntime/Color;

.field public transient stringColor:LJAVARuntime/Color;

.field public transient suggestionQueryColor:LJAVARuntime/Color;

.field public transient tagColor:LJAVARuntime/Color;

.field public transient tagNameColor:LJAVARuntime/Color;

.field public transient textColor:LJAVARuntime/Color;

.field public transient typeColor:LJAVARuntime/Color;

.field public transient variableColor:LJAVARuntime/Color;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    new-instance v0, LJAVARuntime/Color;

    const-string v1, "#ABB7C5"

    invoke-direct {v0, v1}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->textColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v1, "#1f1f1f"

    invoke-direct {v0, v1}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->backgroundColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v1, "#2e2e2e"

    invoke-direct {v0, v1}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->gutterColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v1, "#555555"

    invoke-direct {v0, v1}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->gutterDividerColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v1, "#A4A3A3"

    invoke-direct {v0, v1}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->gutterCurrentLineNumberColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v1, "#616366"

    invoke-direct {v0, v1}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->gutterTextColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v1, "#3A3A3A"

    invoke-direct {v0, v1}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->selectedLineColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v1, "#28427F"

    invoke-direct {v0, v1}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->selectionColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v1, "#987DAC"

    invoke-direct {v0, v1}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->suggestionQueryColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v1, "#33654B"

    invoke-direct {v0, v1}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->findResultBackgroundColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    invoke-direct {v0, v1}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->delimiterBackgroundColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v1, "#6897BB"

    invoke-direct {v0, v1}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->numberColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v2, "#E8E2B7"

    invoke-direct {v0, v2}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->operatorColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v2, "#EC7600"

    invoke-direct {v0, v2}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->keywordColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    invoke-direct {v0, v2}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->typeColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    invoke-direct {v0, v2}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->langConstColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v2, "#C9C54E"

    invoke-direct {v0, v2}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->preprocessorColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v2, "#9378A7"

    invoke-direct {v0, v2}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->variableColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v2, "#FEC76C"

    invoke-direct {v0, v2}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->methodColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v2, "#6E875A"

    invoke-direct {v0, v2}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->stringColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v2, "#66747B"

    invoke-direct {v0, v2}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->commentColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v2, "#E2C077"

    invoke-direct {v0, v2}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->tagColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    invoke-direct {v0, v2}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->tagNameColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v2, "#BABABA"

    invoke-direct {v0, v2}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->attrNameColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v2, "#ABC16D"

    invoke-direct {v0, v2}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->attrValueColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    invoke-direct {v0, v1}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->entityRefColor:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v1, "#ff0000"

    invoke-direct {v0, v1}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->gutterLineError:LJAVARuntime/Color;

    new-instance v0, LJAVARuntime/Color;

    const-string v1, "#f1c40f"

    invoke-direct {v0, v1}, LJAVARuntime/Color;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/TextScriptingTheme;->gutterLineAlert:LJAVARuntime/Color;

    return-void
.end method


# virtual methods
.method public convertInternal()Lorg/blacksquircle/ui/language/base/model/ColorScheme;
    .locals 32
    .annotation runtime LH6/g;
    .end annotation

    move-object/from16 v0, p0

    new-instance v30, Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    move-object/from16 v1, v30

    iget-object v2, v0, LJAVARuntime/TextScriptingTheme;->textColor:LJAVARuntime/Color;

    invoke-virtual {v2}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v0, LJAVARuntime/TextScriptingTheme;->backgroundColor:LJAVARuntime/Color;

    invoke-virtual {v3}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v0, LJAVARuntime/TextScriptingTheme;->gutterColor:LJAVARuntime/Color;

    invoke-virtual {v4}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v0, LJAVARuntime/TextScriptingTheme;->gutterDividerColor:LJAVARuntime/Color;

    invoke-virtual {v5}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iget-object v6, v0, LJAVARuntime/TextScriptingTheme;->gutterCurrentLineNumberColor:LJAVARuntime/Color;

    invoke-virtual {v6}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    iget-object v7, v0, LJAVARuntime/TextScriptingTheme;->gutterTextColor:LJAVARuntime/Color;

    invoke-virtual {v7}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    iget-object v8, v0, LJAVARuntime/TextScriptingTheme;->selectedLineColor:LJAVARuntime/Color;

    invoke-virtual {v8}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    iget-object v9, v0, LJAVARuntime/TextScriptingTheme;->selectionColor:LJAVARuntime/Color;

    invoke-virtual {v9}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    iget-object v10, v0, LJAVARuntime/TextScriptingTheme;->suggestionQueryColor:LJAVARuntime/Color;

    invoke-virtual {v10}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    iget-object v11, v0, LJAVARuntime/TextScriptingTheme;->findResultBackgroundColor:LJAVARuntime/Color;

    invoke-virtual {v11}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    iget-object v12, v0, LJAVARuntime/TextScriptingTheme;->delimiterBackgroundColor:LJAVARuntime/Color;

    invoke-virtual {v12}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    iget-object v13, v0, LJAVARuntime/TextScriptingTheme;->numberColor:LJAVARuntime/Color;

    invoke-virtual {v13}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    iget-object v14, v0, LJAVARuntime/TextScriptingTheme;->operatorColor:LJAVARuntime/Color;

    invoke-virtual {v14}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    iget-object v15, v0, LJAVARuntime/TextScriptingTheme;->keywordColor:LJAVARuntime/Color;

    invoke-virtual {v15}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v31, v1

    iget-object v1, v0, LJAVARuntime/TextScriptingTheme;->typeColor:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    iget-object v1, v0, LJAVARuntime/TextScriptingTheme;->langConstColor:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    iget-object v1, v0, LJAVARuntime/TextScriptingTheme;->preprocessorColor:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    iget-object v1, v0, LJAVARuntime/TextScriptingTheme;->variableColor:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    iget-object v1, v0, LJAVARuntime/TextScriptingTheme;->methodColor:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    iget-object v1, v0, LJAVARuntime/TextScriptingTheme;->stringColor:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    iget-object v1, v0, LJAVARuntime/TextScriptingTheme;->commentColor:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    iget-object v1, v0, LJAVARuntime/TextScriptingTheme;->tagColor:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    iget-object v1, v0, LJAVARuntime/TextScriptingTheme;->tagNameColor:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    iget-object v1, v0, LJAVARuntime/TextScriptingTheme;->attrNameColor:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v25

    iget-object v1, v0, LJAVARuntime/TextScriptingTheme;->attrValueColor:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    iget-object v1, v0, LJAVARuntime/TextScriptingTheme;->entityRefColor:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v27

    iget-object v1, v0, LJAVARuntime/TextScriptingTheme;->gutterLineError:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v28

    iget-object v1, v0, LJAVARuntime/TextScriptingTheme;->gutterLineAlert:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->getHexString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v1, v31

    invoke-direct/range {v1 .. v29}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIIII)V

    return-object v30
.end method
