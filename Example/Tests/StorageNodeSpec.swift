/**
 * Beijing Sankuai Online Technology Co.,Ltd (Meituan)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import XCTest
import Nimble
import EasyReactSwift

class StorageNodeSpec: XCTestCase {
    func testCreation() {
        let node = StorageNode(value: 5)
        expect(node.value) == 5
        expect(node.storeType == Int.self).to(beTrue())
    }

    func testOptional() {
        let nodeA = StorageNode<Int?>(value: 5)
        expect(nodeA.value) == 5
        expect(nodeA.storeType == Int?.self).to(beTrue())

        let nodeB = StorageNode<Int?>(value: nil)
        expect(nodeB.value).to(beNil())
        expect(nodeB.storeType == Int?.self).to(beTrue())
    }

    func testNested() {
        let node = StorageNode(value: StorageNode(value: 3))
        expect(node.value.value) == 3
        expect(node.storeType == StorageNode<Int>.self).to(beTrue())
    }
}

class SettableStorageNodeSpec: XCTestCase {
    func testCreation() {
        let node = SettableStorageNode(value: 5)
        expect(node.value) == 5
        expect(node.storeType == Int.self).to(beTrue())
    }

    func testSetting() {
        let node = SettableStorageNode(value: 5)
        node.set(value: 3)
        expect(node.value) == 3
    }
}
