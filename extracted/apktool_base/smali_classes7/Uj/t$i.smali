.class public LUj/t$i;
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
    name = "i"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    new-instance p2, LIi/Q;

    invoke-direct {p2, p1}, LIi/Q;-><init>(I)V

    invoke-direct {p0, p2}, LUj/a;-><init>(LBi/y;)V

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

    new-instance v1, LIi/Q;

    iget-object v2, p0, LUj/a;->b:LBi/y;

    check-cast v2, LIi/Q;

    invoke-direct {v1, v2}, LIi/Q;-><init>(LIi/Q;)V

    iput-object v1, v0, LUj/a;->b:LBi/y;

    return-object v0
.end method
