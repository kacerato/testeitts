.class public final LOe/D1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/D1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:LOe/D1$a;


# direct methods
.method public constructor <init>(LOe/D1$a;)V
    .locals 0

    iput-object p1, p0, LOe/D1$a$a;->b:LOe/D1$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LOe/D1$a$a;->b:LOe/D1$a;

    iget-object v0, v0, LOe/D1$a;->d:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method
