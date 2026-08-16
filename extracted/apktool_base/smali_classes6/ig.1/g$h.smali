.class public final Lig/g$h;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig/g;->j(Ljava/io/PrintStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/l<",
        "Lig/g$a<",
        "*>;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lig/g$h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lig/g$h;

    invoke-direct {v0}, Lig/g$h;-><init>()V

    sput-object v0, Lig/g$h;->b:Lig/g$h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lig/g$a;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Lig/g$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lig/g$a<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lig/g;->a:Lig/g;

    invoke-static {v0, p1}, Lig/g;->b(Lig/g;Lig/g$a;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lig/g$a;

    invoke-virtual {p0, p1}, Lig/g$h;->b(Lig/g$a;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
