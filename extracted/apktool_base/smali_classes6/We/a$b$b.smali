.class public final enum LWe/a$b$b;
.super LWe/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LWe/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LWe/a$b;-><init>(Ljava/lang/String;ILWe/a$a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Ljava/lang/Thread;->yield()V

    return-void
.end method
