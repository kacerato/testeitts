.class public Lon/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lmn/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmn/a;

    invoke-direct {v0}, Lmn/a;-><init>()V

    iput-object v0, p0, Lon/a;->a:Lmn/a;

    return-void
.end method


# virtual methods
.method public a(Lon/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    iget-object p1, p1, Lon/e;->c:[Ljn/q;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lon/a;->a:Lmn/a;

    invoke-virtual {v3, v2}, Lmn/a;->a(Ljn/q;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
