.class public LAl/c$d;
.super LAl/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lgl/j;->r:Lgl/j;

    invoke-direct {p0, v0}, LAl/c;-><init>(Lgl/j;)V

    return-void
.end method
