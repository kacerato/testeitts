.class public LU2/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU2/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LU2/p;-><init>(LU2/p$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LU2/p$b<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:LU2/p;


# direct methods
.method public constructor <init>(LU2/p;)V
    .locals 0

    iput-object p1, p0, LU2/p$a;->a:LU2/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LU2/p$a;->a:LU2/p;

    invoke-static {v0, p1}, LU2/p;->b(LU2/p;Ljava/lang/Throwable;)Z

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, LU2/p$a;->a:LU2/p;

    invoke-static {v0, p1}, LU2/p;->a(LU2/p;Ljava/lang/Object;)Z

    return-void
.end method
