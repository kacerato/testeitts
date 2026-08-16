.class public LVj/a$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZi/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVj/a$i;-><init>(LVj/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LVj/a$i;


# direct methods
.method public constructor <init>(LVj/a$i;)V
    .locals 0

    iput-object p1, p0, LVj/a$i$a;->a:LVj/a$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)LZi/d;
    .locals 0

    iget-object p1, p0, LVj/a$i$a;->a:LVj/a$i;

    invoke-static {p1}, LVj/a$i;->e(LVj/a$i;)LVj/a$i$b;

    move-result-object p1

    return-object p1
.end method
