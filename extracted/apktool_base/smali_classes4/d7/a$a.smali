.class public Ld7/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx8/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Ld7/a$a$a;

    invoke-direct {v0, p0}, Ld7/a$a$a;-><init>(Ld7/a$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
