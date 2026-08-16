.class public final synthetic Lcom/android/tools/r8/graph/le;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/H2$a;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/tools/r8/graph/le;->a:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/graph/le;->a:J

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/graph/j4;->a(JLcom/android/tools/r8/graph/H2;)J

    move-result-wide v0

    return-wide v0
.end method
