.class public final LLe/y1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/y1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lhn/d;

.field public final c:J


# direct methods
.method public constructor <init>(Lhn/d;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLe/y1$a$a;->b:Lhn/d;

    iput-wide p2, p0, LLe/y1$a$a;->c:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LLe/y1$a$a;->b:Lhn/d;

    iget-wide v1, p0, LLe/y1$a$a;->c:J

    invoke-interface {v0, v1, v2}, Lhn/d;->i(J)V

    return-void
.end method
