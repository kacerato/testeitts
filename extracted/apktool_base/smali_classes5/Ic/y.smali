.class public final synthetic LIc/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:LIc/z;

.field public final synthetic c:LIc/t;

.field public final synthetic d:[I


# direct methods
.method public synthetic constructor <init>(LIc/z;LIc/t;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIc/y;->b:LIc/z;

    iput-object p2, p0, LIc/y;->c:LIc/t;

    iput-object p3, p0, LIc/y;->d:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LIc/y;->b:LIc/z;

    iget-object v1, p0, LIc/y;->c:LIc/t;

    iget-object v2, p0, LIc/y;->d:[I

    invoke-static {v0, v1, v2, p1}, LIc/z;->a(LIc/z;LIc/t;[ILjava/lang/Object;)V

    return-void
.end method
