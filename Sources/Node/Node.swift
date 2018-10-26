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

public class Node<StoreType> : StorageNode<EmptiableValue<StoreType>> {
    public init(value: StoreType) {
        super.init(value: .value(value))
    }

    public init() {
        super.init(value: .empty)
    }

    public var empty: Bool {
        if case .empty = value {
            return true
        }
        return false
    }

    override public var storeType: Any.Type {
        return StoreType.self
    }
}

public class SettableNode<StoreType> : Node<StoreType>, ValueSettable {
    public func set(value: StoreType) {
        privateValue = .value(value)
    }

    public func clean() {
        privateValue = .empty
    }
}
