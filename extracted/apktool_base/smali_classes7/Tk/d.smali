.class public LTk/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LSk/h;


# instance fields
.field public a:LRk/l;


# direct methods
.method public constructor <init>(LRk/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LTk/d;->a:LRk/l;

    return-void
.end method

.method public static synthetic b(LTk/d;)LRk/l;
    .locals 0

    iget-object p0, p0, LTk/d;->a:LRk/l;

    return-object p0
.end method


# virtual methods
.method public a(Lhi/b;)LSk/g;
    .locals 1

    new-instance v0, LTk/d$a;

    invoke-direct {v0, p0, p1}, LTk/d$a;-><init>(LTk/d;Lhi/b;)V

    return-object v0
.end method
