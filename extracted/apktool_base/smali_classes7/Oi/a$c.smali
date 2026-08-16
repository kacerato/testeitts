.class public LOi/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:LOi/a$b;

.field public b:LOi/a$b;

.field public c:LOi/a$b;

.field public d:LOi/a$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LOi/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LOi/a$b;-><init>(LOi/a$a;)V

    iput-object v0, p0, LOi/a$c;->a:LOi/a$b;

    new-instance v0, LOi/a$b;

    invoke-direct {v0, v1}, LOi/a$b;-><init>(LOi/a$a;)V

    iput-object v0, p0, LOi/a$c;->b:LOi/a$b;

    new-instance v0, LOi/a$b;

    invoke-direct {v0, v1}, LOi/a$b;-><init>(LOi/a$a;)V

    iput-object v0, p0, LOi/a$c;->c:LOi/a$b;

    new-instance v0, LOi/a$b;

    invoke-direct {v0, v1}, LOi/a$b;-><init>(LOi/a$a;)V

    iput-object v0, p0, LOi/a$c;->d:LOi/a$b;

    return-void
.end method

.method public synthetic constructor <init>(LOi/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, LOi/a$c;-><init>()V

    return-void
.end method

.method public static synthetic a(LOi/a$c;LOi/a$b;LOi/a$b;LOi/a$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LOi/a$c;->g(LOi/a$b;LOi/a$b;LOi/a$b;)V

    return-void
.end method

.method public static synthetic b(LOi/a$c;LOi/a$b;LOi/a$b;LOi/a$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LOi/a$c;->f(LOi/a$b;LOi/a$b;LOi/a$b;)V

    return-void
.end method

.method public static synthetic c(LOi/a$c;LOi/a$b;LOi/a$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LOi/a$c;->e(LOi/a$b;LOi/a$b;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x10

    move v5, v3

    iget-object v4, v0, LOi/a$c;->b:LOi/a$b;

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v3, 0x2

    add-int/lit8 v8, v3, 0x3

    add-int/lit8 v9, v3, 0x4

    add-int/lit8 v10, v3, 0x5

    add-int/lit8 v11, v3, 0x6

    add-int/lit8 v12, v3, 0x7

    add-int/lit8 v13, v3, 0x8

    add-int/lit8 v14, v3, 0x9

    add-int/lit8 v15, v3, 0xa

    add-int/lit8 v16, v3, 0xb

    add-int/lit8 v17, v3, 0xc

    add-int/lit8 v18, v3, 0xd

    add-int/lit8 v19, v3, 0xe

    add-int/lit8 v20, v3, 0xf

    invoke-static/range {v4 .. v20}, LOi/a;->b(LOi/a$b;IIIIIIIIIIIIIIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v3, :cond_1

    mul-int/lit8 v2, v1, 0x2

    move v5, v2

    iget-object v4, v0, LOi/a$c;->b:LOi/a$b;

    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v2, 0x10

    add-int/lit8 v8, v2, 0x11

    add-int/lit8 v9, v2, 0x20

    add-int/lit8 v10, v2, 0x21

    add-int/lit8 v11, v2, 0x30

    add-int/lit8 v12, v2, 0x31

    add-int/lit8 v13, v2, 0x40

    add-int/lit8 v14, v2, 0x41

    add-int/lit8 v15, v2, 0x50

    add-int/lit8 v16, v2, 0x51

    add-int/lit8 v17, v2, 0x60

    add-int/lit8 v18, v2, 0x61

    add-int/lit8 v19, v2, 0x70

    add-int/lit8 v20, v2, 0x71

    invoke-static/range {v4 .. v20}, LOi/a;->b(LOi/a$b;IIIIIIIIIIIIIIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final e(LOi/a$b;LOi/a$b;)V
    .locals 1

    iget-object v0, p0, LOi/a$c;->b:LOi/a$b;

    invoke-static {v0, p1}, LOi/a$b;->d(LOi/a$b;LOi/a$b;)V

    invoke-virtual {p0}, LOi/a$c;->d()V

    iget-object v0, p0, LOi/a$c;->b:LOi/a$b;

    invoke-static {p2, p1, v0}, LOi/a$b;->e(LOi/a$b;LOi/a$b;LOi/a$b;)V

    return-void
.end method

.method public final f(LOi/a$b;LOi/a$b;LOi/a$b;)V
    .locals 1

    iget-object v0, p0, LOi/a$c;->a:LOi/a$b;

    invoke-static {v0, p1, p2}, LOi/a$b;->e(LOi/a$b;LOi/a$b;LOi/a$b;)V

    iget-object p1, p0, LOi/a$c;->b:LOi/a$b;

    iget-object p2, p0, LOi/a$c;->a:LOi/a$b;

    invoke-static {p1, p2}, LOi/a$b;->d(LOi/a$b;LOi/a$b;)V

    invoke-virtual {p0}, LOi/a$c;->d()V

    iget-object p1, p0, LOi/a$c;->a:LOi/a$b;

    iget-object p2, p0, LOi/a$c;->b:LOi/a$b;

    invoke-static {p3, p1, p2}, LOi/a$b;->e(LOi/a$b;LOi/a$b;LOi/a$b;)V

    return-void
.end method

.method public final g(LOi/a$b;LOi/a$b;LOi/a$b;)V
    .locals 1

    iget-object v0, p0, LOi/a$c;->a:LOi/a$b;

    invoke-static {v0, p1, p2}, LOi/a$b;->e(LOi/a$b;LOi/a$b;LOi/a$b;)V

    iget-object p1, p0, LOi/a$c;->b:LOi/a$b;

    iget-object p2, p0, LOi/a$c;->a:LOi/a$b;

    invoke-static {p1, p2}, LOi/a$b;->d(LOi/a$b;LOi/a$b;)V

    invoke-virtual {p0}, LOi/a$c;->d()V

    iget-object p1, p0, LOi/a$c;->a:LOi/a$b;

    iget-object p2, p0, LOi/a$c;->b:LOi/a$b;

    invoke-static {p3, p1, p2}, LOi/a$b;->a(LOi/a$b;LOi/a$b;LOi/a$b;)V

    return-void
.end method
