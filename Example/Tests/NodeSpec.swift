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

class NodeSpec: XCTestCase {
    func testCreation() {
        let node = Node(value: 5)
        expect(node.empty) == false
        if case .value(let value) = node.value {
            expect(value) == 5
        }
        expect(node.storeType == Int.self).to(beTrue())
    }

    func testEmpty() {
        let node = Node<Int>()
        expect(node.empty) == true
        expect(node.storeType == Int.self).to(beTrue())
    }
}

class SettableNodeSpec: XCTestCase {
    func testCreation() {
        let node = SettableNode(value: 5)
        expect(node.empty) == false
        if case .value(let value) = node.value {
            expect(value) == 5
        }
        expect(node.storeType == Int.self).to(beTrue())
    }

    func testSetting() {
        let node = SettableNode(value: 5)
        node.set(value: 3)
        expect(node.empty) == false
        if case .value(let value) = node.value {
            expect(value) == 3
        }
    }

    func testClean() {
        let node = SettableNode(value: 5)
        node.clean()
        expect(node.empty) == true
        node.set(value: 3)
        expect(node.empty) == false
   }
}
