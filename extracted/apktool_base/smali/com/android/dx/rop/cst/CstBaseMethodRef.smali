.class public abstract Lcom/android/dx/rop/cst/CstBaseMethodRef;
.super Lcom/android/dx/rop/cst/CstMemberRef;
.source "SourceFile"


# instance fields
.field private instancePrototype:Lcom/android/dx/rop/type/Prototype;

.field private final prototype:Lcom/android/dx/rop/type/Prototype;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/dx/rop/cst/CstMemberRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstMemberRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstNat;->getDescriptor()Lcom/android/dx/rop/cst/CstString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->isSignaturePolymorphic()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/dx/rop/type/Prototype;->fromDescriptor(Ljava/lang/String;)Lcom/android/dx/rop/type/Prototype;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/dx/rop/type/Prototype;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Prototype;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->instancePrototype:Lcom/android/dx/rop/type/Prototype;

    return-void
.end method


# virtual methods
.method public final compareTo0(Lcom/android/dx/rop/cst/Constant;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/android/dx/rop/cst/CstMemberRef;->compareTo0(Lcom/android/dx/rop/cst/Constant;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    iget-object v0, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    iget-object p1, p1, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    invoke-virtual {v0, p1}, Lcom/android/dx/rop/type/Prototype;->compareTo(Lcom/android/dx/rop/type/Prototype;)I

    move-result p1

    return p1
.end method

.method public final getParameterWordCount(Z)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getPrototype(Z)Lcom/android/dx/rop/type/Prototype;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result p1

    return p1
.end method

.method public final getPrototype()Lcom/android/dx/rop/type/Prototype;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    return-object v0
.end method

.method public final getPrototype(Z)Lcom/android/dx/rop/type/Prototype;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->instancePrototype:Lcom/android/dx/rop/type/Prototype;

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstMemberRef;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    invoke-virtual {v0, p1}, Lcom/android/dx/rop/type/Prototype;->withFirstParameter(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Prototype;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->instancePrototype:Lcom/android/dx/rop/type/Prototype;

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->instancePrototype:Lcom/android/dx/rop/type/Prototype;

    return-object p1
.end method

.method public final getType()Lcom/android/dx/rop/type/Type;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Prototype;->getReturnType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public final isClassInit()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstMemberRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstNat;->isClassInit()Z

    move-result v0

    return v0
.end method

.method public final isInstanceInit()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstMemberRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstNat;->isInstanceInit()Z

    move-result v0

    return v0
.end method

.method public final isSignaturePolymorphic()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstMemberRef;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    sget-object v1, Lcom/android/dx/rop/cst/CstType;->METHOD_HANDLE:Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstMemberRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstNat;->isSignaturePolymorphic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
