.class public abstract LWl/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:C = 'Z'

.field public static final d:C = 'I'

.field public static final e:C = 'L'

.field public static final f:C = 'U'

.field public static final g:C = 'R'


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()LWl/w;
.end method

.method public abstract b()[B
.end method

.method public c()I
    .locals 1

    iget v0, p0, LWl/w;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LWl/w;->a:I

    return v0
.end method

.method public abstract e()Z
.end method

.method public abstract f(LWl/C;)LWl/C;
.end method

.method public abstract g(LWl/w;)LWl/w;
.end method

.method public abstract h(LWl/x;)LWl/w;
.end method

.method public abstract i(LWl/C;)LWl/C;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
