.class public LJ/f$e;
.super LJ/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJ/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LJ/f$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, LJ/f$e$a;

    invoke-direct {v0}, LJ/f$e$a;-><init>()V

    invoke-direct {p0, v0}, LJ/f$a;-><init>(LJ/f$d;)V

    return-void
.end method
