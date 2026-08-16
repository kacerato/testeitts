.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;
.source "SourceFile"


# static fields
.field public static final V:Ljava/lang/String; = "UIInputText"

.field public static final W:Ljava/lang/Class;


# instance fields
.field public P:Ljava/nio/ByteBuffer;

.field public Q:Ljava/nio/ByteBuffer;

.field public R:Z

.field public S:I

.field public T:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ltc/e;",
            ">;"
        }
    .end annotation
.end field

.field public U:LJAVARuntime/Component;

.field private color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private extractUI:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private extractUITitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private fontHandler:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private textSize:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->W:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$b;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$b;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "UIInputText"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;-><init>(Ljava/lang/String;)V

    const-string v0, "My textview"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->textSize:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->fontHandler:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->extractUI:Z

    const-string v0, "Edit text"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->extractUITitle:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->R:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->T:Ljava/util/Set;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->textSize:F

    return p0
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->extractUI:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->extractUITitle:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->fontHandler:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;

    return-object p0
.end method

.method private changeNativeCursorPos()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->Q:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->Q:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private listenKeyboard()V
    .locals 8

    const-string v0, "android_back"

    invoke-static {v0}, Lrc/a;->j(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Input/Key;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lrc/a;->H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->R:Z

    return-void

    :cond_0
    sget-object v0, Lrc/a;->t:Lrc/a$f;

    invoke-virtual {v0}, Lrc/a$f;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltc/e;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->T:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->T:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v6, v4, Ltc/e;->b:Ljava/lang/String;

    const-string v7, "del"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    if-lez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    sub-int/2addr v7, v5

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->writeTextToNativeBuffer()V

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    if-gez v4, :cond_3

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    :cond_3
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->changeNativeCursorPos()V

    goto :goto_0

    :cond_4
    iget-object v6, v4, Ltc/e;->b:Ljava/lang/String;

    const-string v7, "enter"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {p0}, Lrc/a;->H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->R:Z

    goto :goto_0

    :cond_5
    iget v4, v4, Ltc/e;->o:I

    if-lez v4, :cond_1

    invoke-static {v4}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v3, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->changeNativeCursorPos()V

    move v3, v5

    goto/16 :goto_0

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltc/e;

    iget v6, v4, Ltc/e;->p:F

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_7

    iget v4, v4, Ltc/e;->o:I

    if-lez v4, :cond_7

    invoke-static {v4}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v6

    if-nez v6, :cond_7

    new-instance v3, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->changeNativeCursorPos()V

    move v3, v5

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_9

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->writeTextToNativeBuffer()V

    :cond_9
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->T:Ljava/util/Set;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$c;

    invoke-direct {v2, p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private showExtractUIDialog()V
    .locals 3

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->extractUITitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v1, v2

    :cond_2
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method private writeTextToNativeBuffer()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->P:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_2

    :cond_1
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->w(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->P:Ljava/nio/ByteBuffer;

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->P:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->P:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->P:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->P:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->P:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->S(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public calculateInternalSizeEnd(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    return-void
.end method

.method public calculateInternalSizeStart(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSW()Z

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v1, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, p1

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSH()Z

    move-result p1

    if-eqz p1, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v0

    :goto_1
    const/4 p1, 0x2

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/FloatArrayJP;->acquireZeroFill(I)[F

    move-result-object p1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->R:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->textSize:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->fontHandler:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->g()J

    move-result-wide v8

    const/4 v7, 0x1

    move-object v10, p1

    invoke-static/range {v3 .. v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeCalcTextSize(Ljava/lang/String;FFFZJ[F)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->textSize:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->fontHandler:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->g()J

    move-result-wide v8

    const/4 v7, 0x1

    move-object v10, p1

    invoke-static/range {v3 .. v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeCalcTextSize(Ljava/lang/String;FFFZJ[F)V

    :goto_2
    const/4 v0, 0x0

    aget v1, p1, v0

    float-to-int v5, v1

    const/4 v9, 0x1

    aget v2, p1, v9

    float-to-int v6, v2

    float-to-int v7, v1

    float-to-int v8, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->setInternalWidgetRect(IIIIII)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSW()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    aget v0, p1, v0

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalWidth(I)Z

    :cond_4
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSH()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    aget p1, p1, v9

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalHeight(I)Z

    :cond_5
    return-void
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->textSize:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->textSize:F

    .line 6
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->fontHandler:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->a()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->fontHandler:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;

    .line 7
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->extractUI:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->extractUI:Z

    .line 8
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->extractUITitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->extractUITitle:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->fontHandler:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getRequestUIDirtyRunnable()Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public getExtractUITitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->extractUITitle:Ljava/lang/String;

    return-object v0
.end method

.method public getFont()Ltb/a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->fontHandler:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->e()Ltb/a;

    move-result-object v0

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f07022d

    return v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$d;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TEXT:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, LC5/b$a;->MLString:LC5/b$a;

    invoke-direct {v1, v2, v3, v4, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$e;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;)V

    sget-object v3, LC5/b$a;->Color:LC5/b$a;

    const-string v4, "color"

    invoke-direct {v1, v2, v4, v3, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v1, v2, p0, v4, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$f;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;)V

    const-string v3, "size"

    sget-object v4, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v3, "textSize"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v1, v2, p0, v3, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$g;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;)V

    const-string v3, "Extract UI"

    sget-object v4, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$h;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;)V

    const-string v3, "Extract UI Title"

    sget-object v4, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v1, v2, v3, v4, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->fontHandler:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->h()I

    move-result p1

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$i;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;)V

    const-string v2, "Resolution"

    invoke-static {v2, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->b(Ljava/lang/String;ILF5/c$s0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$j;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FONT:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, LC5/b$a;->InputFile:LC5/b$a;

    const-string v4, ".ttf|.otf"

    invoke-direct {p1, v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextSize()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->textSize:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "InputText"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIInputText:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEditing()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->R:Z

    return v0
.end method

.method public isExtractUI()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->extractUI:Z

    return v0
.end method

.method public onDetach()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->R:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lrc/a;->H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->R:Z

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->T:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->onDetach()V

    return-void
.end method

.method public onGuiEnd(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    return-void
.end method

.method public onGuiStart(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeSetCursorPos(FF)V

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSW()Z

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v3, :cond_1

    move v9, v4

    goto :goto_0

    :cond_1
    move v9, v1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSH()Z

    move-result v1

    if-eqz v1, :cond_2

    move v10, v4

    goto :goto_1

    :cond_2
    move v10, v2

    :goto_1
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->P:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->writeTextToNativeBuffer()V

    :cond_3
    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->P:Ljava/nio/ByteBuffer;

    iget-boolean v7, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->R:Z

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->Q:Ljava/nio/ByteBuffer;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->fontHandler:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->g()J

    move-result-wide v13

    iget-object v15, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->textSize:F

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v16, v1

    invoke-static/range {v5 .. v16}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->t(Ljava/nio/ByteBuffer;IZLjava/nio/ByteBuffer;FFFFJLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)Z

    move-result v1

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->Q:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->Q:Ljava/nio/ByteBuffer;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->P:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->D(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public onSelectedTouchChanged(Ltc/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->onSelectedTouchChanged(Ltc/h;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->getTouchTrigger()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->isDown()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->extractUI:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->R:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->R:Z

    invoke-static {p0}, Lrc/a;->H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->showExtractUIDialog()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->R:Z

    invoke-static {p0}, Lrc/a;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->fontHandler:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getRequestUIDirtyRunnable()Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->n(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->Q:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->v()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->Q:Ljava/nio/ByteBuffer;

    :cond_0
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->changeNativeCursorPos()V

    :cond_1
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-le p1, p2, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->S:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->changeNativeCursorPos()V

    :cond_2
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->R:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->listenKeyboard()V

    :cond_3
    return-void
.end method

.method public receiveEvent(LLb/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->receiveEvent(LLb/c;)V

    instance-of v0, p1, LIc/B;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lrc/a;->H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->R:Z

    :cond_0
    instance-of p1, p1, LIc/D;

    if-eqz p1, :cond_1

    invoke-static {p0}, Lrc/a;->H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->R:Z

    :cond_1
    return-void
.end method

.method public setColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    if-ne v0, v1, :cond_2

    :cond_1
    return-void

    :cond_2
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setEditing(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editing"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->R:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->R:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setExtractUI(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extractUI"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->extractUI:Z

    if-ne v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->R:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->extractUI:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->R:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->R:Z

    invoke-static {p0}, Lrc/a;->H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setExtractUITitle(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extractUITitle"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->extractUITitle:Ljava/lang/String;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->extractUITitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setFont(Ltb/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "font"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->fontHandler:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->k(Ltb/a;)V

    return-void
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->U:LJAVARuntime/Component;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->text:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->writeTextToNativeBuffer()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    :cond_1
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textSize"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->textSize:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->textSize:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->U:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UIInputText;

    invoke-direct {v0, p0}, LJAVARuntime/UIInputText;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIInputText;->U:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
