.class public LUj/v$d;
.super LUj/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LUj/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    new-instance v0, LIi/P;

    invoke-direct {v0, p1}, LIi/P;-><init>(I)V

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

    check-cast v0, LUj/v$d;

    new-instance v1, LIi/P;

    iget-object v2, p0, LUj/a;->b:LBi/y;

    check-cast v2, LIi/P;

    invoke-direct {v1, v2}, LIi/P;-><init>(LIi/P;)V

    iput-object v1, v0, LUj/a;->b:LBi/y;

    return-object v0
.end method
