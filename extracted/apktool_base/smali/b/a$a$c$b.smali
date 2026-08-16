.class public final Lb/a$a$c$b;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lb/a$a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a$a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lb/a$a$c$b;",
        ">;",
        "Lb/a$a$d;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Lcom/android/aapt/Resources$SourcePosition;

.field public e:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$SourcePosition;",
            "Lcom/android/aapt/Resources$SourcePosition$Builder;",
            "Lcom/android/aapt/Resources$SourcePositionOrBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lb/a$a$c$b;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lb/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a$a$c$b;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 6
    const-string p1, ""

    iput-object p1, p0, Lb/a$a$c$b;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lb/c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/a$a$c$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lb/a;->a()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A6(Lcom/android/aapt/Resources$SourcePosition$Builder;)Lb/a$a$c$b;
    .locals 1

    iget-object v0, p0, Lb/a$a$c$b;->e:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/aapt/Resources$SourcePosition$Builder;->build()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object p1

    iput-object p1, p0, Lb/a$a$c$b;->d:Lcom/android/aapt/Resources$SourcePosition;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$SourcePosition$Builder;->build()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lb/a$a$c$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lb/a$a$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public B6(Lcom/android/aapt/Resources$SourcePosition;)Lb/a$a$c$b;
    .locals 1

    iget-object v0, p0, Lb/a$a$c$b;->e:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lb/a$a$c$b;->d:Lcom/android/aapt/Resources$SourcePosition;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lb/a$a$c$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lb/a$a$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final C6(Lcom/google/protobuf/r2;)Lb/a$a$c$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lb/a$a$c$b;

    return-object p1
.end method

.method public G()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lb/a$a$c$b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a$a$c$b;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public I1()Lb/a$a$c;
    .locals 2

    new-instance v0, Lb/a$a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/a$a$c;-><init>(Lcom/google/protobuf/w0$b;Lb/d;)V

    iget v1, p0, Lb/a$a$c$b;->b:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lb/a$a$c$b;->v3(Lb/a$a$c;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public a5()Lb/a$a$c$b;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    iput v0, p0, Lb/a$a$c$b;->b:I

    const-string v0, ""

    iput-object v0, p0, Lb/a$a$c$b;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a$a$c$b;->d:Lcom/android/aapt/Resources$SourcePosition;

    iget-object v1, p0, Lb/a$a$c$b;->e:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lb/a$a$c$b;->e:Lcom/google/protobuf/Q1;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a$a$c$b;->m1()Lb/a$a$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/a$a$c$b;->m1()Lb/a$a$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a$a$c$b;->I1()Lb/a$a$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/a$a$c$b;->I1()Lb/a$a$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lb/a$a$c$b;->a5()Lb/a$a$c$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a$a$c$b;->a5()Lb/a$a$c$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lb/a$a$c$b;->a5()Lb/a$a$c$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/a$a$c$b;->a5()Lb/a$a$c$b;

    move-result-object v0

    return-object v0
.end method

.method public g0()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lb/a$a$c$b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lb/a$a$c$b;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a$a$c$b;->s6()Lb/a$a$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/a$a$c$b;->s6()Lb/a$a$c;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lb/a;->a()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lcom/android/aapt/Resources$SourcePosition;
    .locals 1

    iget-object v0, p0, Lb/a$a$c$b;->e:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a$a$c$b;->d:Lcom/android/aapt/Resources$SourcePosition;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$SourcePosition;->getDefaultInstance()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$SourcePosition;

    return-object v0
.end method

.method public getSourceBuilder()Lcom/android/aapt/Resources$SourcePosition$Builder;
    .locals 1

    iget v0, p0, Lb/a$a$c$b;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lb/a$a$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-virtual {p0}, Lb/a$a$c$b;->getSourceFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$SourcePosition$Builder;

    return-object v0
.end method

.method public final getSourceFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$SourcePosition;",
            "Lcom/android/aapt/Resources$SourcePosition$Builder;",
            "Lcom/android/aapt/Resources$SourcePositionOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/a$a$c$b;->e:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lb/a$a$c$b;->getSource()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lb/a$a$c$b;->e:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a$a$c$b;->d:Lcom/android/aapt/Resources$SourcePosition;

    :cond_0
    iget-object v0, p0, Lb/a$a$c$b;->e:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method public getSourceOrBuilder()Lcom/android/aapt/Resources$SourcePositionOrBuilder;
    .locals 1

    iget-object v0, p0, Lb/a$a$c$b;->e:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$SourcePositionOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lb/a$a$c$b;->d:Lcom/android/aapt/Resources$SourcePosition;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/aapt/Resources$SourcePosition;->getDefaultInstance()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasSource()Z
    .locals 1

    iget v0, p0, Lb/a$a$c$b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lb/a;->b()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lb/a$a$c;

    const-class v2, Lb/a$a$c$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m1()Lb/a$a$c;
    .locals 2

    invoke-virtual {p0}, Lb/a$a$c$b;->I1()Lb/a$a$c;

    move-result-object v0

    invoke-virtual {v0}, Lb/a$a$c;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lb/a$a$c$b;->u6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lb/a$a$c$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lb/a$a$c$b;->v6(Lcom/google/protobuf/Y0;)Lb/a$a$c$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lb/a$a$c$b;->u6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lb/a$a$c$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lb/a$a$c$b;->v6(Lcom/google/protobuf/Y0;)Lb/a$a$c$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lb/a$a$c$b;->u6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lb/a$a$c$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lb/a$a$c$b;->u6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lb/a$a$c$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lb/a$a$c$b;->x6(Lcom/google/protobuf/r2;)Lb/a$a$c$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/a$a$c$b;->x6(Lcom/google/protobuf/r2;)Lb/a$a$c$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lb/a$a$c$b;->x6(Lcom/google/protobuf/r2;)Lb/a$a$c$b;

    move-result-object p1

    return-object p1
.end method

.method public q6()Lb/a$a$c$b;
    .locals 1

    invoke-static {}, Lb/a$a$c;->w6()Lb/a$a$c;

    move-result-object v0

    invoke-virtual {v0}, Lb/a$a$c;->G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a$a$c$b;->c:Ljava/lang/Object;

    iget v0, p0, Lb/a$a$c$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lb/a$a$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public r6()Lb/a$a$c$b;
    .locals 2

    iget v0, p0, Lb/a$a$c$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lb/a$a$c$b;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a$a$c$b;->d:Lcom/android/aapt/Resources$SourcePosition;

    iget-object v1, p0, Lb/a$a$c$b;->e:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lb/a$a$c$b;->e:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public s6()Lb/a$a$c;
    .locals 1

    invoke-static {}, Lb/a$a$c;->w6()Lb/a$a$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lb/a$a$c$b;->C6(Lcom/google/protobuf/r2;)Lb/a$a$c$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/a$a$c$b;->C6(Lcom/google/protobuf/r2;)Lb/a$a$c$b;

    move-result-object p1

    return-object p1
.end method

.method public t6(Lb/a$a$c;)Lb/a$a$c$b;
    .locals 1

    invoke-static {}, Lb/a$a$c;->w6()Lb/a$a$c;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lb/a$a$c;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lb/a$a$c;->t6(Lb/a$a$c;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lb/a$a$c$b;->c:Ljava/lang/Object;

    iget v0, p0, Lb/a$a$c$b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a$a$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lb/a$a$c;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lb/a$a$c;->getSource()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a$a$c$b;->w6(Lcom/android/aapt/Resources$SourcePosition;)Lb/a$a$c$b;

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/a$a$c$b;->x6(Lcom/google/protobuf/r2;)Lb/a$a$c$b;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public u6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lb/a$a$c$b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_3

    const/16 v3, 0x12

    if-eq v1, v3, :cond_2

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/w0$b;->parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lb/a$a$c$b;->getSourceFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    iget v1, p0, Lb/a$a$c$b;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lb/a$a$c$b;->b:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a$a$c$b;->c:Ljava/lang/Object;

    iget v1, p0, Lb/a$a$c$b;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lb/a$a$c$b;->b:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    throw p1

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final v3(Lb/a$a$c;)V
    .locals 2

    iget v0, p0, Lb/a$a$c$b;->b:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a$a$c$b;->c:Ljava/lang/Object;

    invoke-static {p1, v1}, Lb/a$a$c;->u6(Lb/a$a$c;Ljava/lang/Object;)V

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/a$a$c$b;->e:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a$a$c$b;->d:Lcom/android/aapt/Resources$SourcePosition;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$SourcePosition;

    :goto_0
    invoke-static {p1, v0}, Lb/a$a$c;->v6(Lb/a$a$c;Lcom/android/aapt/Resources$SourcePosition;)V

    :cond_2
    return-void
.end method

.method public v6(Lcom/google/protobuf/Y0;)Lb/a$a$c$b;
    .locals 1

    instance-of v0, p1, Lb/a$a$c;

    if-eqz v0, :cond_0

    check-cast p1, Lb/a$a$c;

    invoke-virtual {p0, p1}, Lb/a$a$c$b;->t6(Lb/a$a$c;)Lb/a$a$c$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public w6(Lcom/android/aapt/Resources$SourcePosition;)Lb/a$a$c$b;
    .locals 2

    iget-object v0, p0, Lb/a$a$c$b;->e:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lb/a$a$c$b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a$a$c$b;->d:Lcom/android/aapt/Resources$SourcePosition;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$SourcePosition;->getDefaultInstance()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lb/a$a$c$b;->getSourceBuilder()Lcom/android/aapt/Resources$SourcePosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$SourcePosition$Builder;->mergeFrom(Lcom/android/aapt/Resources$SourcePosition;)Lcom/android/aapt/Resources$SourcePosition$Builder;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lb/a$a$c$b;->d:Lcom/android/aapt/Resources$SourcePosition;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lb/a$a$c$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lb/a$a$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final x6(Lcom/google/protobuf/r2;)Lb/a$a$c$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lb/a$a$c$b;

    return-object p1
.end method

.method public y6(Ljava/lang/String;)Lb/a$a$c$b;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lb/a$a$c$b;->c:Ljava/lang/Object;

    iget p1, p0, Lb/a$a$c$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/a$a$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public z6(Lcom/google/protobuf/x;)Lb/a$a$c$b;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lb/a$a$c;->access$000(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lb/a$a$c$b;->c:Ljava/lang/Object;

    iget p1, p0, Lb/a$a$c$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/a$a$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method
