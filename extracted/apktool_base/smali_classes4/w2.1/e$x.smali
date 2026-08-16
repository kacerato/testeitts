.class public Lw2/e$x;
.super Lw2/e$w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "x"
.end annotation


# direct methods
.method public constructor <init>(Lw2/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lw2/e$w;-><init>(Lw2/e;)V

    return-void
.end method


# virtual methods
.method public final J()Lw2/e;
    .locals 0

    return-object p0
.end method
