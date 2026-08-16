.class public LIg/d$b;
.super LIg/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LIg/d;->p()LTg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static final synthetic e:Z


# instance fields
.field public final synthetic d:LIg/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(LIg/d;LTg/x;)V
    .locals 0

    iput-object p1, p0, LIg/d$b;->d:LIg/d;

    invoke-direct {p0, p2}, LIg/e;-><init>(LTg/x;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, LIg/d$b;->d:LIg/d;

    const/4 v0, 0x1

    iput-boolean v0, p1, LIg/d;->n:Z

    return-void
.end method
