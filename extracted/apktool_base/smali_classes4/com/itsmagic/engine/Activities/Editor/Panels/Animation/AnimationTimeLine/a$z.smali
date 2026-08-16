.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;
.super LF7/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "z"
.end annotation


# static fields
.field public static final r:LF7/j;

.field public static final s:LF7/j;

.field public static final t:LF7/j;

.field public static final u:LF7/j;


# instance fields
.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

.field public o:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public p:I

.field public q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->r:LF7/j;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z$b;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z$b;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->s:LF7/j;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z$c;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z$c;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->t:LF7/j;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z$d;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z$d;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->u:LF7/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayName"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->r:LF7/j;

    invoke-direct {p0, p1, v0}, LF7/i;-><init>(Ljava/lang/String;LF7/j;)V

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->m:Ljava/util/List;

    return-void
.end method

.method public static A(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Object"

    :goto_0
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;-><init>(Ljava/lang/String;)V

    iput-object p0, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->o:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->t:LF7/j;

    invoke-virtual {v1, p0}, LF7/i;->s(LF7/j;)V

    return-object v1
.end method

.method public static B(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;)Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "timeline"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    invoke-static {p0}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;-><init>(Ljava/lang/String;)V

    iput-object p1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->n:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->j()Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$q;->a:[I

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->j()Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p0, 0x7f07016e

    iput p0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->q:I

    goto :goto_0

    :pswitch_1
    const p0, 0x7f070173

    iput p0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->q:I

    goto :goto_0

    :pswitch_2
    const p0, 0x7f07016d

    iput p0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->q:I

    goto :goto_0

    :pswitch_3
    const p0, 0x7f070174

    iput p0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->q:I

    goto :goto_0

    :pswitch_4
    const p0, 0x7f070175

    iput p0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->q:I

    :cond_0
    :goto_0
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->u:LF7/j;

    invoke-virtual {v0, p0}, LF7/i;->s(LF7/j;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic u(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->n:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    return-object p0
.end method

.method public static synthetic v(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->o:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object p0
.end method

.method public static synthetic w(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->m:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic x(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->p:I

    return p0
.end method

.method public static synthetic y(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->q:I

    return p0
.end method

.method public static z(Ljava/lang/String;I)Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "iconRes"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;-><init>(Ljava/lang/String;)V

    iput p1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->p:I

    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->s:LF7/j;

    invoke-virtual {v0, p0}, LF7/i;->s(LF7/j;)V

    return-object v0
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LF7/i;->a:Ljava/lang/String;

    return-object v0
.end method
