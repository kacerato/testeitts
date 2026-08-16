.class public final Lmg/d;
.super Lmg/k;
.source "SourceFile"


# annotations
.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# static fields
.field public static final a:Lmg/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lmg/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmg/d;

    invoke-direct {v0}, Lmg/d;-><init>()V

    sput-object v0, Lmg/d;->a:Lmg/d;

    new-instance v0, Lmg/d$a;

    invoke-direct {v0}, Lmg/d$a;-><init>()V

    sput-object v0, Lmg/d;->b:Lmg/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmg/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)LMf/l;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "LMf/l<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lmg/d;->b:Lmg/d$a;

    invoke-static {v0, p1}, Lmg/c;->a(Lmg/d$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LMf/l;

    return-object p1
.end method
