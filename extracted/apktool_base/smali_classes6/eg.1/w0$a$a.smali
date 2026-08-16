.class public final Leg/w0$a$a;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leg/w0$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/l<",
        "Lyf/j$b;",
        "Leg/w0;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Leg/w0$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leg/w0$a$a;

    invoke-direct {v0}, Leg/w0$a$a;-><init>()V

    sput-object v0, Leg/w0$a$a;->b:Leg/w0$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lyf/j$b;)Leg/w0;
    .locals 1
    .param p1    # Lyf/j$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Leg/w0;

    if-eqz v0, :cond_0

    check-cast p1, Leg/w0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyf/j$b;

    invoke-virtual {p0, p1}, Leg/w0$a$a;->b(Lyf/j$b;)Leg/w0;

    move-result-object p1

    return-object p1
.end method
