.class public LUj/t$g;
.super LUj/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LUj/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 3

    new-instance v0, LIi/C;

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-direct {v0, p1, v1, v2, p2}, LIi/C;-><init>(I[BII)V

    invoke-direct {p0, v0}, LUj/a;-><init>(LBi/y;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUj/a;

    new-instance v1, LIi/C;

    iget-object v2, p0, LUj/a;->b:LBi/y;

    check-cast v2, LIi/C;

    invoke-direct {v1, v2}, LIi/C;-><init>(LIi/C;)V

    iput-object v1, v0, LUj/a;->b:LBi/y;

    return-object v0
.end method
