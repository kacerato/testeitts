.class public final Lcom/android/dx/dex/file/MethodIdItem;
.super Lcom/android/dx/dex/file/MemberIdItem;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstBaseMethodRef;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/MemberIdItem;-><init>(Lcom/android/dx/rop/cst/CstMemberRef;)V

    return-void
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/dx/dex/file/MemberIdItem;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getProtoIds()Lcom/android/dx/dex/file/ProtoIdsSection;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/dx/dex/file/MethodIdItem;->getMethodRef()Lcom/android/dx/rop/cst/CstBaseMethodRef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/ProtoIdsSection;->intern(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/dex/file/ProtoIdItem;

    return-void
.end method

.method public getMethodRef()Lcom/android/dx/rop/cst/CstBaseMethodRef;
    .locals 1

    invoke-virtual {p0}, Lcom/android/dx/dex/file/MemberIdItem;->getRef()Lcom/android/dx/rop/cst/CstMemberRef;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    return-object v0
.end method

.method public getTypoidIdx(Lcom/android/dx/dex/file/DexFile;)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getProtoIds()Lcom/android/dx/dex/file/ProtoIdsSection;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/dx/dex/file/MethodIdItem;->getMethodRef()Lcom/android/dx/rop/cst/CstBaseMethodRef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/ProtoIdsSection;->indexOf(Lcom/android/dx/rop/type/Prototype;)I

    move-result p1

    return p1
.end method

.method public getTypoidName()Ljava/lang/String;
    .locals 1

    const-string v0, "proto_idx"

    return-object v0
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_METHOD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method
