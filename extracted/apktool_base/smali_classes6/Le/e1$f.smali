.class public final LLe/e1$f;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LLe/e1$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:J = 0x367ac732fab94eaL


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LLe/e1$f;->b:Ljava/lang/Object;

    iput-wide p2, p0, LLe/e1$f;->c:J

    return-void
.end method
