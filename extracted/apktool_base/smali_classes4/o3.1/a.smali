.class public final synthetic Lo3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT2/k;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:LT2/g;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;LT2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lo3/a;->b:LT2/g;

    return-void
.end method


# virtual methods
.method public final a(LT2/h;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo3/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lo3/a;->b:LT2/g;

    invoke-static {v0, v1, p1}, Lo3/b;->b(Ljava/lang/String;LT2/g;LT2/h;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
