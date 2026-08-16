.class public final Lmg/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmg/C;


# annotations
.annotation build Leg/F0;
.end annotation


# static fields
.field public static final a:Lmg/G;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmg/G;

    invoke-direct {v0}, Lmg/G;-><init>()V

    sput-object v0, Lmg/G;->a:Lmg/G;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lmg/C$a;->a(Lmg/C;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/util/List;)Leg/V0;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lmg/C;",
            ">;)",
            "Leg/V0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lmg/F;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p1, v0, v0, v1, v0}, Lmg/F;-><init>(Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/x;)V

    return-object p1
.end method
