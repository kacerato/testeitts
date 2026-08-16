.class public final Lah/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lah/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lah/b$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lah/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;LYg/v;Lah/b$b;)Lah/b;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LYg/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lah/b$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LYg/v;",
            "Lah/b$b;",
            ")",
            "Lah/b<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "speedometer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indicator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lah/b$a$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    new-instance p3, Lah/e;

    invoke-direct {p3, p1}, Lah/e;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    new-instance p3, Lah/c;

    invoke-direct {p3, p1}, Lah/c;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    new-instance p3, Lah/d;

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-direct {p3, p1, v0}, Lah/d;-><init>(Landroid/content/Context;F)V

    goto :goto_0

    :pswitch_3
    new-instance p3, Lah/d;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p3, p1, v0}, Lah/d;-><init>(Landroid/content/Context;F)V

    goto :goto_0

    :pswitch_4
    new-instance p3, Lah/d;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p3, p1, v0}, Lah/d;-><init>(Landroid/content/Context;F)V

    goto :goto_0

    :pswitch_5
    new-instance p3, Lah/i;

    invoke-direct {p3, p1}, Lah/i;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_6
    new-instance p3, Lah/j;

    invoke-direct {p3, p1}, Lah/j;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_7
    new-instance p3, Lah/h;

    invoke-direct {p3, p1}, Lah/h;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_8
    new-instance p3, Lah/g;

    invoke-direct {p3, p1}, Lah/g;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_9
    new-instance p3, Lah/f;

    invoke-direct {p3, p1}, Lah/f;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p3, p2}, Lah/b;->p(LYg/v;)Lah/b;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
