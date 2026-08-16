.class public LUj/n$a;
.super LUj/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LUj/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, LIi/G;

    invoke-direct {v0}, LIi/G;-><init>()V

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

    check-cast v0, LUj/n$a;

    new-instance v1, LIi/G;

    iget-object v2, p0, LUj/a;->b:LBi/y;

    check-cast v2, LIi/G;

    invoke-direct {v1, v2}, LIi/G;-><init>(LIi/G;)V

    iput-object v1, v0, LUj/a;->b:LBi/y;

    return-object v0
.end method
