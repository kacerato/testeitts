.class public final Lw2/i$d;
.super Lw2/i;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lw2/i<",
        "TT;TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final d:Lw2/i$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/i$d<",
            "*>;"
        }
    .end annotation
.end field

.field public static final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw2/i$d;

    invoke-direct {v0}, Lw2/i$d;-><init>()V

    sput-object v0, Lw2/i$d;->d:Lw2/i$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/i;-><init>()V

    return-void
.end method

.method private p()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lw2/i$d;->d:Lw2/i$d;

    return-object v0
.end method


# virtual methods
.method public f(Lw2/i;)Lw2/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/i<",
            "TT;TS;>;)",
            "Lw2/i<",
            "TT;TS;>;"
        }
    .end annotation

    const-string v0, "otherConverter"

    invoke-static {p1, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/i;

    return-object p1
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method

.method public i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method

.method public bridge synthetic m()Lw2/i;
    .locals 1

    invoke-virtual {p0}, Lw2/i$d;->q()Lw2/i$d;

    move-result-object v0

    return-object v0
.end method

.method public q()Lw2/i$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/i$d<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Converter.identity()"

    return-object v0
.end method
