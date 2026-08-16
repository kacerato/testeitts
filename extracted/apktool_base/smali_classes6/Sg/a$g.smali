.class public abstract LSg/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation


# instance fields
.field public final b:Z

.field public final c:LTg/e;

.field public final d:LTg/d;


# direct methods
.method public constructor <init>(ZLTg/e;LTg/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LSg/a$g;->b:Z

    iput-object p2, p0, LSg/a$g;->c:LTg/e;

    iput-object p3, p0, LSg/a$g;->d:LTg/d;

    return-void
.end method
