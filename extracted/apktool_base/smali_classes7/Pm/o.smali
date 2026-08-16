.class public LPm/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LPm/o$b;
    }
.end annotation


# instance fields
.field public a:LPm/o$b;

.field public final b:Ljava/lang/StringBuilder;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LUm/s;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/StringBuilder;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:C

.field public h:Ljava/lang/StringBuilder;

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LPm/o$b;->START_DEFINITION:LPm/o$b;

    iput-object v0, p0, LPm/o;->a:LPm/o$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, LPm/o;->b:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LPm/o;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, LPm/o;->i:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)I
    .locals 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, LTm/d;->m(Ljava/lang/CharSequence;II)I

    move-result p2

    invoke-static {p1, p2}, LTm/c;->a(Ljava/lang/CharSequence;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    add-int/2addr p2, v4

    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, LPm/o;->f:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p1, v0, p2}, LTm/d;->m(Ljava/lang/CharSequence;II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lt p2, p1, :cond_2

    iput-boolean v4, p0, LPm/o;->i:Z

    iget-object p1, p0, LPm/o;->b:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_2
    if-ne p2, v0, :cond_3

    return v1

    :cond_3
    :goto_1
    sget-object p1, LPm/o$b;->START_TITLE:LPm/o$b;

    iput-object p1, p0, LPm/o;->a:LPm/o$b;

    return p2
.end method

.method public final b()V
    .locals 6

    iget-boolean v0, p0, LPm/o;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LPm/o;->f:Ljava/lang/String;

    invoke-static {v0}, LTm/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LPm/o;->h:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LTm/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p0, LPm/o;->c:Ljava/util/List;

    new-instance v4, LUm/s;

    iget-object v5, p0, LPm/o;->e:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v1}, LUm/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v2, p0, LPm/o;->d:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, LPm/o;->i:Z

    iput-object v2, p0, LPm/o;->e:Ljava/lang/String;

    iput-object v2, p0, LPm/o;->f:Ljava/lang/String;

    iput-object v2, p0, LPm/o;->h:Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LUm/s;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, LPm/o;->b()V

    iget-object v0, p0, LPm/o;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, LPm/o;->b:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public e()LPm/o$b;
    .locals 1

    iget-object v0, p0, LPm/o;->a:LPm/o$b;

    return-object v0
.end method

.method public final f(Ljava/lang/CharSequence;I)I
    .locals 3

    invoke-static {p1, p2}, LTm/c;->c(Ljava/lang/CharSequence;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, LPm/o;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lt v0, p2, :cond_1

    iget-object p1, p0, LPm/o;->d:Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_1
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    const/16 v2, 0x5d

    if-ne p2, v2, :cond_5

    add-int/lit8 p2, v0, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p2, v2, :cond_5

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    const/16 v2, 0x3a

    if-eq p2, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, LPm/o;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/16 v2, 0x3e7

    if-le p2, v2, :cond_3

    return v1

    :cond_3
    iget-object p2, p0, LPm/o;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, LTm/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    iput-object p2, p0, LPm/o;->e:Ljava/lang/String;

    sget-object p2, LPm/o$b;->DESTINATION:LPm/o$b;

    iput-object p2, p0, LPm/o;->a:LPm/o$b;

    add-int/lit8 v0, v0, 0x2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p1, v0, p2}, LTm/d;->m(Ljava/lang/CharSequence;II)I

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v1
.end method

.method public g(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, LPm/o;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LPm/o;->b:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, LPm/o;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v1, LPm/o$a;->a:[I

    iget-object v2, p0, LPm/o;->a:LPm/o$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1, v0}, LPm/o;->j(Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, v0}, LPm/o;->i(Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, v0}, LPm/o;->a(Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1, v0}, LPm/o;->f(Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1, v0}, LPm/o;->h(Ljava/lang/CharSequence;I)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object p1, LPm/o$b;->PARAGRAPH:LPm/o$b;

    iput-object p1, p0, LPm/o;->a:LPm/o$b;

    :cond_2
    :pswitch_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Ljava/lang/CharSequence;I)I
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, LTm/d;->m(Ljava/lang/CharSequence;II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, LPm/o$b;->LABEL:LPm/o$b;

    iput-object v0, p0, LPm/o;->a:LPm/o$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, LPm/o;->d:Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lt p2, p1, :cond_1

    iget-object p1, p0, LPm/o;->d:Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return p2

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public final i(Ljava/lang/CharSequence;I)I
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, LTm/d;->m(Ljava/lang/CharSequence;II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    sget-object p1, LPm/o$b;->START_DEFINITION:LPm/o$b;

    iput-object p1, p0, LPm/o;->a:LPm/o$b;

    return p2

    :cond_0
    const/4 v0, 0x0

    iput-char v0, p0, LPm/o;->g:C

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x29

    iput-char v0, p0, LPm/o;->g:C

    goto :goto_0

    :cond_2
    iput-char v0, p0, LPm/o;->g:C

    :goto_0
    iget-char v0, p0, LPm/o;->g:C

    if-eqz v0, :cond_3

    sget-object v0, LPm/o$b;->TITLE:LPm/o$b;

    iput-object v0, p0, LPm/o;->a:LPm/o$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, LPm/o;->h:Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ne p2, p1, :cond_4

    iget-object p1, p0, LPm/o;->h:Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, LPm/o;->b()V

    sget-object p1, LPm/o$b;->START_DEFINITION:LPm/o$b;

    iput-object p1, p0, LPm/o;->a:LPm/o$b;

    :cond_4
    :goto_1
    return p2
.end method

.method public final j(Ljava/lang/CharSequence;I)I
    .locals 3

    iget-char v0, p0, LPm/o;->g:C

    invoke-static {p1, p2, v0}, LTm/c;->e(Ljava/lang/CharSequence;IC)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, LPm/o;->h:Ljava/lang/StringBuilder;

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lt v0, p2, :cond_1

    iget-object p1, p0, LPm/o;->h:Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_1
    const/4 p2, 0x1

    add-int/2addr v0, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {p1, v0, v2}, LTm/d;->m(Ljava/lang/CharSequence;II)I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eq v0, p1, :cond_2

    return v1

    :cond_2
    iput-boolean p2, p0, LPm/o;->i:Z

    invoke-virtual {p0}, LPm/o;->b()V

    iget-object p1, p0, LPm/o;->b:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object p1, LPm/o$b;->START_DEFINITION:LPm/o$b;

    iput-object p1, p0, LPm/o;->a:LPm/o$b;

    return v0
.end method
