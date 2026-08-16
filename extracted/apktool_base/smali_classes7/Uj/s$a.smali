.class public LUj/s$a;
.super LUj/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LUj/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, LIi/L;->x()LBi/O;

    move-result-object v0

    invoke-direct {p0, v0}, LUj/a;-><init>(LBi/y;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUj/s$a;

    iget-object v1, p0, LUj/a;->b:LBi/y;

    invoke-static {v1}, LIi/L;->z(LBi/y;)LBi/O;

    move-result-object v1

    iput-object v1, v0, LUj/a;->b:LBi/y;

    return-object v0
.end method
