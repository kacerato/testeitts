.class public Lwl/c$f;
.super Lwl/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lqh/a;->z1:Loh/x;

    invoke-direct {p0, v0}, Lwl/c;-><init>(Loh/x;)V

    return-void
.end method
